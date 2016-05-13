.class public Lcom/facebook/acra/CrashReportData;
.super Ljava/util/EnumMap;
.source "release"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<",
        "Lcom/facebook/acra/ReportField;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final NONE:I = 0x0

.field private static final PROP_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2

.field private static lineSeparator:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field protected defaults:Lcom/facebook/acra/CrashReportData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 541
    const-string v0, "\n"

    sput-object v0, Lcom/facebook/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/facebook/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/facebook/acra/CrashReportData;)V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/facebook/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 96
    iput-object p1, p0, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    .line 97
    return-void
.end method

.method private dumpString(Ljava/lang/Appendable;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 102
    if-nez p3, :cond_6

    if-lez v3, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_6

    .line 103
    const-string v0, "\\ "

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 104
    const/4 v0, 0x1

    move v2, v0

    .line 107
    :goto_0
    if-ge v2, v3, :cond_5

    .line 108
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    packed-switch v0, :pswitch_data_0

    .line 123
    :pswitch_0
    if-eqz p3, :cond_0

    if-eq v0, v6, :cond_1

    :cond_0
    if-eq v0, v7, :cond_1

    const/16 v4, 0x23

    if-eq v0, v4, :cond_1

    const/16 v4, 0x21

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_2

    .line 128
    :cond_1
    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 130
    :cond_2
    if-lt v0, v6, :cond_3

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_3

    .line 131
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 107
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v0, "\\t"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 114
    :pswitch_2
    const-string v0, "\\n"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 117
    :pswitch_3
    const-string v0, "\\f"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 120
    :pswitch_4
    const-string v0, "\\r"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 133
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 134
    const-string v0, "\\u"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move v0, v1

    .line 135
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    if-ge v0, v5, :cond_4

    .line 136
    const/16 v5, 0x30

    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 138
    :cond_4
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 142
    :cond_5
    return-void

    :cond_6
    move v2, v1

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 2

    .prologue
    .line 563
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "ISO8859_1"

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEbcdic(Ljava/io/BufferedInputStream;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 281
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 282
    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_2

    .line 294
    :cond_1
    :goto_0
    return v0

    .line 285
    :cond_2
    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    .line 286
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/facebook/acra/ReportField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/facebook/acra/CrashReportData;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 830
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getProperty(Lcom/facebook/acra/ReportField;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/CrashReportData;->getProperty(Lcom/facebook/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_0
    return-object v0
.end method

.method public getProperty(Lcom/facebook/acra/ReportField;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    if-eqz v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/CrashReportData;->getProperty(Lcom/facebook/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    if-nez v0, :cond_1

    .line 181
    :goto_0
    return-object p2

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 196
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 197
    invoke-direct {p0}, Lcom/facebook/acra/CrashReportData;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 198
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ReportField;

    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    invoke-super {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    iget-object v2, p0, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    .line 204
    :goto_1
    if-nez v1, :cond_1

    .line 205
    invoke-virtual {v2, v0}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    iget-object v2, v2, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    goto :goto_1

    .line 208
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x28

    if-le v0, v2, :cond_2

    .line 209
    const/16 v0, 0x25

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 217
    :cond_3
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 231
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 232
    invoke-direct {p0}, Lcom/facebook/acra/CrashReportData;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 233
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ReportField;

    .line 235
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-super {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    iget-object v2, p0, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    .line 239
    :goto_1
    if-nez v1, :cond_1

    .line 240
    invoke-virtual {v2, v0}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 241
    iget-object v2, v2, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x28

    if-le v0, v2, :cond_2

    .line 244
    const/16 v0, 0x25

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 252
    :cond_3
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 264
    monitor-enter p0

    if-nez p1, :cond_0

    .line 265
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 268
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 269
    invoke-direct {p0, v0}, Lcom/facebook/acra/CrashReportData;->isEbcdic(Ljava/io/BufferedInputStream;)Z

    move-result v1

    .line 270
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 272
    if-nez v1, :cond_1

    .line 273
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "ISO8859-1"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/facebook/acra/CrashReportData;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :goto_0
    monitor-exit p0

    return-void

    .line 275
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lcom/facebook/acra/CrashReportData;->load(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .locals 13

    .prologue
    .line 326
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 327
    const/16 v0, 0x28

    :try_start_0
    new-array v7, v0, [C

    .line 328
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 329
    const/4 v0, 0x1

    .line 330
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v8, v0

    move v4, v6

    move v0, v1

    move v1, v5

    move v5, v3

    .line 333
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v3

    .line 336
    const/4 v6, -0x1

    if-eq v3, v6, :cond_11

    if-eqz v3, :cond_11

    .line 339
    int-to-char v3, v3

    .line 341
    array-length v6, v7

    if-ne v2, v6, :cond_0

    .line 342
    array-length v6, v7

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [C

    .line 343
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v10, v6, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v6

    .line 346
    :cond_0
    const/4 v6, 0x2

    if-ne v5, v6, :cond_19

    .line 347
    const/16 v6, 0x10

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 348
    if-ltz v6, :cond_1

    .line 349
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v6, v4

    .line 350
    add-int/lit8 v4, v1, 0x1

    const/4 v1, 0x4

    if-ge v4, v1, :cond_18

    move v1, v4

    move v4, v6

    .line 351
    goto :goto_0

    .line 353
    :cond_1
    const/4 v5, 0x4

    if-gt v1, v5, :cond_2

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.09"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v5, v4

    move v4, v1

    .line 357
    :goto_1
    const/4 v6, 0x0

    .line 358
    add-int/lit8 v1, v2, 0x1

    int-to-char v10, v5

    :try_start_1
    aput-char v10, v7, v2

    .line 359
    const/16 v2, 0xa

    if-eq v3, v2, :cond_3

    const/16 v2, 0x85

    if-ne v3, v2, :cond_17

    :cond_3
    move v2, v6

    move v6, v5

    move v5, v4

    .line 363
    :goto_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 364
    const/4 v4, 0x0

    .line 365
    sparse-switch v3, :sswitch_data_0

    move v2, v4

    .line 464
    :cond_4
    :goto_3
    const/4 v4, 0x0

    .line 465
    const/4 v8, 0x4

    if-ne v2, v8, :cond_5

    .line 467
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    .line 469
    :cond_5
    add-int/lit8 v8, v1, 0x1

    aput-char v3, v7, v1

    move v1, v5

    move v5, v2

    move v2, v8

    move v8, v4

    move v4, v6

    goto :goto_0

    .line 367
    :sswitch_0
    const/4 v2, 0x3

    move v4, v6

    move v12, v5

    move v5, v2

    move v2, v1

    move v1, v12

    .line 368
    goto :goto_0

    .line 371
    :sswitch_1
    const/4 v2, 0x5

    move v4, v6

    move v12, v5

    move v5, v2

    move v2, v1

    move v1, v12

    .line 372
    goto :goto_0

    .line 374
    :sswitch_2
    const/16 v2, 0x8

    move v3, v2

    move v2, v4

    .line 375
    goto :goto_3

    .line 377
    :sswitch_3
    const/16 v2, 0xc

    move v3, v2

    move v2, v4

    .line 378
    goto :goto_3

    .line 380
    :sswitch_4
    const/16 v2, 0xa

    move v3, v2

    move v2, v4

    .line 381
    goto :goto_3

    .line 383
    :sswitch_5
    const/16 v2, 0xd

    move v3, v2

    move v2, v4

    .line 384
    goto :goto_3

    .line 386
    :sswitch_6
    const/16 v2, 0x9

    move v3, v2

    move v2, v4

    .line 387
    goto :goto_3

    .line 389
    :sswitch_7
    const/4 v2, 0x2

    .line 390
    const/4 v5, 0x0

    move v4, v5

    move v12, v5

    move v5, v2

    move v2, v1

    move v1, v12

    .line 391
    goto/16 :goto_0

    .line 394
    :cond_6
    sparse-switch v3, :sswitch_data_1

    .line 447
    :cond_7
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 448
    const/4 v4, 0x3

    if-ne v2, v4, :cond_8

    .line 449
    const/4 v2, 0x5

    .line 452
    :cond_8
    if-eqz v1, :cond_16

    if-eq v1, v0, :cond_16

    const/4 v4, 0x5

    if-eq v2, v4, :cond_16

    .line 455
    const/4 v4, -0x1

    if-ne v0, v4, :cond_f

    .line 456
    const/4 v2, 0x4

    move v4, v6

    move v12, v5

    move v5, v2

    move v2, v1

    move v1, v12

    .line 457
    goto/16 :goto_0

    .line 397
    :sswitch_8
    if-eqz v8, :cond_7

    .line 399
    :cond_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v3

    .line 400
    const/4 v4, -0x1

    if-eq v3, v4, :cond_16

    .line 402
    int-to-char v3, v3

    .line 405
    const/16 v4, 0xd

    if-eq v3, v4, :cond_16

    const/16 v4, 0xa

    if-eq v3, v4, :cond_16

    const/16 v4, 0x85

    if-ne v3, v4, :cond_9

    move v4, v6

    move v12, v5

    move v5, v2

    move v2, v1

    move v1, v12

    .line 406
    goto/16 :goto_0

    .line 413
    :sswitch_9
    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 414
    const/4 v2, 0x5

    move v4, v6

    move v12, v5

    move v5, v2

    move v2, v1

    move v1, v12

    .line 415
    goto/16 :goto_0

    .line 420
    :cond_a
    :sswitch_a
    const/4 v3, 0x0

    .line 421
    const/4 v2, 0x1

    .line 422
    if-gtz v1, :cond_b

    if-nez v1, :cond_d

    if-nez v0, :cond_d

    .line 423
    :cond_b
    const/4 v4, -0x1

    if-ne v0, v4, :cond_c

    move v0, v1

    .line 426
    :cond_c
    new-instance v4, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v1}, Ljava/lang/String;-><init>([CII)V

    .line 427
    const-class v1, Lcom/facebook/acra/ReportField;

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_d
    const/4 v0, -0x1

    .line 430
    const/4 v1, 0x0

    move v8, v2

    move v4, v6

    move v2, v1

    move v1, v5

    move v5, v3

    .line 431
    goto/16 :goto_0

    .line 433
    :sswitch_b
    const/4 v3, 0x4

    if-ne v2, v3, :cond_e

    move v0, v1

    .line 436
    :cond_e
    const/4 v2, 0x1

    move v4, v6

    move v12, v5

    move v5, v2

    move v2, v1

    move v1, v12

    .line 437
    goto/16 :goto_0

    .line 440
    :sswitch_c
    const/4 v4, -0x1

    if-ne v0, v4, :cond_7

    .line 441
    const/4 v2, 0x0

    move v0, v1

    move v4, v6

    move v12, v5

    move v5, v2

    move v2, v1

    move v1, v12

    .line 443
    goto/16 :goto_0

    .line 460
    :cond_f
    const/4 v4, 0x5

    if-eq v2, v4, :cond_10

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 461
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 471
    :cond_11
    const/4 v3, 0x2

    if-ne v5, v3, :cond_12

    const/4 v3, 0x4

    if-gt v1, v3, :cond_12

    .line 473
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.08"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_12
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    if-lez v2, :cond_15

    move v1, v2

    .line 478
    :goto_4
    if-ltz v1, :cond_14

    .line 479
    new-instance v3, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v3, v7, v0, v2}, Ljava/lang/String;-><init>([CII)V

    .line 480
    const-class v0, Lcom/facebook/acra/ReportField;

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ReportField;

    .line 481
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 482
    const/4 v2, 0x1

    if-ne v5, v2, :cond_13

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    :cond_13
    invoke-virtual {p0, v0, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    :cond_14
    monitor-exit p0

    return-void

    :cond_15
    move v1, v0

    goto :goto_4

    :cond_16
    move v4, v6

    move v12, v5

    move v5, v2

    move v2, v1

    move v1, v12

    goto/16 :goto_0

    :cond_17
    move v2, v1

    move v1, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_0

    :cond_18
    move v5, v6

    goto/16 :goto_1

    :cond_19
    move v6, v4

    move v12, v1

    move v1, v2

    move v2, v5

    move v5, v12

    goto/16 :goto_2

    .line 365
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
        0x85 -> :sswitch_1
    .end sparse-switch

    .line 394
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
        0x85 -> :sswitch_a
    .end sparse-switch
.end method

.method public merge(Lcom/facebook/acra/CrashReportData;)V
    .locals 3

    .prologue
    .line 740
    invoke-virtual {p1}, Lcom/facebook/acra/CrashReportData;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ReportField;

    .line 741
    invoke-virtual {p0, v0}, Lcom/facebook/acra/CrashReportData;->getProperty(Lcom/facebook/acra/ReportField;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 742
    invoke-virtual {p1, v0}, Lcom/facebook/acra/CrashReportData;->getProperty(Lcom/facebook/acra/ReportField;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 745
    :cond_1
    return-void
.end method

.method public put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    if-eqz p3, :cond_0

    .line 494
    invoke-virtual {p0, p3, p1, p2}, Lcom/facebook/acra/CrashReportData;->storeKeyValuePair(Ljava/io/Writer;Lcom/facebook/acra/ReportField;Ljava/lang/String;)V

    .line 496
    :cond_0
    return-object v0
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 522
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/acra/CrashReportData;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setProperty(Lcom/facebook/acra/ReportField;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0, p1, p2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/facebook/acra/CrashReportData;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized store(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 583
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 584
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/acra/CrashReportData;->storeComment(Ljava/io/Writer;Ljava/lang/String;)V

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 587
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/acra/ReportField;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/acra/CrashReportData;->storeKeyValuePair(Ljava/io/Writer;Lcom/facebook/acra/ReportField;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 589
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized storeComment(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 595
    sget-object v0, Lcom/facebook/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    monitor-exit p0

    return-void

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized storeKeyValuePair(Ljava/io/Writer;Lcom/facebook/acra/ReportField;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    if-nez p3, :cond_0

    const-string p3, ""

    .line 603
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit8 v3, v1, 0x5

    add-int/2addr v1, v3

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 607
    const/4 v1, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/acra/CrashReportData;->dumpString(Ljava/lang/Appendable;Ljava/lang/String;Z)V

    .line 608
    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, v2, p3, v0}, Lcom/facebook/acra/CrashReportData;->dumpString(Ljava/lang/Appendable;Ljava/lang/String;Z)V

    .line 610
    sget-object v0, Lcom/facebook/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 729
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/acra/CrashReportData;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public declared-synchronized storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 771
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 772
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 784
    :cond_1
    :try_start_1
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 793
    :goto_0
    :try_start_2
    new-instance v2, Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-direct {v2, p1, v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 795
    const-string v1, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 797
    const-string v0, "\"?>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 799
    const-string v0, "<!DOCTYPE properties SYSTEM \""

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 800
    const-string v0, "http://java.sun.com/dtd/properties.dtd"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 801
    const-string v0, "\">"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 803
    const-string v0, "<properties>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 805
    if-eqz p2, :cond_2

    .line 806
    const-string v0, "<comment>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 807
    invoke-direct {p0, p2}, Lcom/facebook/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 808
    const-string v0, "</comment>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 811
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 812
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/acra/ReportField;

    invoke-virtual {v1}, Lcom/facebook/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v1

    .line 813
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 814
    const-string v4, "<entry key=\""

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 815
    invoke-direct {p0, v1}, Lcom/facebook/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 816
    const-string v1, "\">"

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 817
    invoke-direct {p0, v0}, Lcom/facebook/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 818
    const-string v0, "</entry>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 786
    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning: encoding name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is illegal, using UTF-8 as default encoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 787
    const-string v0, "UTF-8"

    goto/16 :goto_0

    .line 789
    :catch_1
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning: encoding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported, using UTF-8 as default encoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 790
    const-string v0, "UTF-8"

    goto/16 :goto_0

    .line 820
    :cond_3
    const-string v0, "</properties>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 822
    monitor-exit p0

    return-void
.end method
