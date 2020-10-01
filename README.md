# MultipleCurrenciesProject

# Setting Multtiple Currencies Active

# Setting Multtiple Currencies

# Create Custom Object Price__c

# 予想仕様

# Process Builder作成（処理は新規のみ）

# Process Builderで実現仕様
⇨　Process Builderで実現できるけど、
⇨「Currency」項目が「通貨コード」項目と同じく表示させること。
⇨ しかし、「仕入価額」項目が「Currency」項目変更前に実行しました。
⇨ 「Currency」項目のデフォルト通貨種類が「JPY」ですが、だから、こんな型値で表示させること。

# Triggerで実現
⇨ 上記問題を解決するために、	「Currency」項目がレコードInsertする前に変更するが必要です。

# Custom Metadata Types
⇨ トリガーの有効／無効を実行コントロールする