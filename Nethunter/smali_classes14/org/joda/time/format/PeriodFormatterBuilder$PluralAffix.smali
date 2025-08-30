.class Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;
.super Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;
.source "PeriodFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PluralAffix"
.end annotation


# instance fields
.field private final iPluralText:Ljava/lang/String;

.field private final iSingularText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1109
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;-><init>()V

    .line 1110
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    .line 1111
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    .line 1112
    return-void
.end method


# virtual methods
.method public calculatePrintedLength(I)I
    .locals 1

    .line 1115
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method public getAffixes()[Ljava/lang/String;
    .locals 2

    .line 1182
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;I)I
    .locals 11

    .line 1127
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    .line 1128
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    .line 1130
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1132
    nop

    .line 1133
    nop

    .line 1134
    move-object v10, v0

    move-object v0, v1

    goto :goto_0

    .line 1130
    :cond_0
    move-object v10, v1

    .line 1137
    :goto_0
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x1

    move-object v4, p1

    move v6, p2

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1139
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    return p2

    .line 1142
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v2, 0x1

    move-object v1, p1

    move v3, p2

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1143
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1144
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    return p2

    .line 1148
    :cond_2
    not-int p1, p2

    return p1
.end method

.method public printTo(Ljava/io/Writer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    .line 1119
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1120
    return-void
.end method

.method public scan(Ljava/lang/String;I)I
    .locals 14

    .line 1152
    move-object v0, p0

    move-object v7, p1

    iget-object v1, v0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    .line 1153
    iget-object v2, v0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    .line 1155
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1157
    nop

    .line 1158
    nop

    .line 1159
    move-object v9, v1

    move-object v8, v2

    goto :goto_0

    .line 1155
    :cond_0
    move-object v8, v1

    move-object v9, v2

    .line 1162
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    .line 1163
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 1165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 1166
    move/from16 v13, p2

    :goto_1
    if-ge v13, v12, :cond_3

    .line 1167
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v3, v13

    move-object v4, v8

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1168
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1, p1, v13}, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1169
    return v13

    .line 1172
    :cond_1
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v3, v13

    move-object v4, v9

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1173
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1, p1, v13}, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1174
    return v13

    .line 1166
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1178
    :cond_3
    move/from16 v1, p2

    not-int v1, v1

    return v1
.end method
