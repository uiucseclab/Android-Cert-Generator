.class final Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;
.super Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.source "video_already_seen"


# instance fields
.field final synthetic a:Lcom/facebook/sosource/XzsAssetSoSource;

.field public final b:[Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

.field public final c:Ljava/util/zip/ZipFile;

.field public final d:I

.field public final e:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(Lcom/facebook/sosource/XzsAssetSoSource;)V
    .locals 18

    .prologue
    .line 67
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->a:Lcom/facebook/sosource/XzsAssetSoSource;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;-><init>()V

    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 70
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->a()[Ljava/lang/String;

    move-result-object v8

    .line 72
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-static/range {p1 .. p1}, Lcom/facebook/sosource/XzsAssetSoSource;->a(Lcom/facebook/sosource/XzsAssetSoSource;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 74
    :try_start_0
    const-string v2, "assets/lib/metadata.txt"

    invoke-virtual {v9, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 75
    const-string v3, "assets/lib/libs.xzs"

    invoke-virtual {v9, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 76
    if-eqz v2, :cond_0

    if-nez v10, :cond_1

    .line 77
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->b:[Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

    .line 78
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->c:Ljava/util/zip/ZipFile;

    .line 79
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->e:Ljava/util/zip/ZipEntry;

    .line 80
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->d:I

    .line 151
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {v9, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    const/4 v3, 0x0

    .line 86
    :try_start_1
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    new-instance v13, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x20

    invoke-direct {v13, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 89
    :cond_2
    :goto_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 90
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    const/4 v5, 0x0

    .line 95
    const/4 v4, 0x0

    .line 96
    const/4 v2, 0x0

    .line 98
    invoke-virtual {v13, v14}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v13}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 100
    invoke-virtual {v13}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-virtual {v13}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 102
    invoke-virtual {v13}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v13}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 104
    invoke-virtual {v13}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 109
    :cond_3
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    if-nez v2, :cond_6

    .line 110
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "illegal line in xzs metadata: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 85
    :catch_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :catchall_0
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    :goto_2
    if-eqz v11, :cond_5

    if-eqz v3, :cond_b

    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    :goto_3
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 150
    :catchall_1
    move-exception v2

    .line 151
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    throw v2

    .line 115
    :cond_6
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "assets/lib/"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v15

    if-nez v15, :cond_2

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 120
    const/16 v15, 0x2f

    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 121
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 122
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "illegal line in xzs metadata: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :catchall_2
    move-exception v2

    goto :goto_2

    .line 125
    :cond_7
    const/4 v14, 0x0

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 126
    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-static {v8, v14}, Lcom/facebook/soloader/SysUtil;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 129
    new-instance v15, Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

    invoke-direct {v15, v5, v2, v4, v14}, Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 130
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    if-ltz v14, :cond_2

    .line 132
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

    .line 133
    if-eqz v2, :cond_8

    iget v2, v2, Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;->b:I

    if-ge v14, v2, :cond_2

    .line 134
    :cond_8
    invoke-virtual {v7, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_1

    .line 138
    :cond_9
    if-eqz v11, :cond_a

    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_a
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

    .line 141
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;->e:Z

    goto :goto_4

    .line 138
    :catch_1
    move-exception v4

    invoke-static {v3, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3

    .line 144
    :cond_c
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->d:I

    .line 145
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->b:[Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

    .line 146
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->e:Ljava/util/zip/ZipEntry;

    .line 147
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->c:Ljava/util/zip/ZipFile;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    iget-object v1, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->b:[Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

    invoke-direct {v0, v1}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;-><init>([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    return-object v0
.end method

.method protected final b()Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->e:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/facebook/sosource/XzsAssetSoSource$EmptyInputDsoIterator;

    const/4 v1, 0x0

    invoke-direct {v0}, Lcom/facebook/sosource/XzsAssetSoSource$EmptyInputDsoIterator;-><init>()V

    .line 171
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;

    invoke-direct {v0, p0}, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;-><init>(Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;)V

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->c:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 159
    return-void
.end method
