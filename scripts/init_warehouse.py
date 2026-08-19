#!/usr/bin/env python3
"""Inicializa o Performance Data Warehouse do VITÓRIA OS (SQLite bootstrap).

Uso:
    python3 scripts/init_warehouse.py

Cria data/warehouse/vitoria.db a partir de data/warehouse/schema.sql (idempotente).
Quando o Supabase estiver conectado, o mesmo schema.sql roda no Postgres sem alteração
significativa — este arquivo é só a fase de bootstrap local.
"""
import sqlite3
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SCHEMA = ROOT / "data" / "warehouse" / "schema.sql"
DB = ROOT / "data" / "warehouse" / "vitoria.db"


def main() -> None:
    schema_sql = SCHEMA.read_text(encoding="utf-8")
    conn = sqlite3.connect(DB)
    try:
        conn.executescript(schema_sql)
        conn.commit()
        tables = [r[0] for r in conn.execute(
            "SELECT name FROM sqlite_master WHERE type='table' ORDER BY name"
        )]
    finally:
        conn.close()
    print(f"✓ Warehouse pronto: {DB}")
    print(f"✓ Tabelas ({len(tables)}): {', '.join(tables)}")


if __name__ == "__main__":
    main()
