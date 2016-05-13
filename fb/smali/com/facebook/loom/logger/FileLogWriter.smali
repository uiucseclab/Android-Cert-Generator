.class public Lcom/facebook/loom/logger/FileLogWriter;
.super Lcom/facebook/loom/logger/LogWriter;
.source "undefined"


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field private static final b:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/StringBuilder;

.field private f:[B

.field private final g:Lcom/facebook/loom/logger/LogEntry;

.field private h:Z

.field private i:Ljava/io/OutputStream;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/facebook/loom/logger/FileLogWriter;->a:Ljava/nio/charset/Charset;

    .line 39
    const/16 v0, 0x3e8

    sput v0, Lcom/facebook/loom/logger/FileLogWriter;->b:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v1, 0x40

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/facebook/loom/logger/LogWriter;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->e:Ljava/lang/StringBuilder;

    .line 45
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->f:[B

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->h:Z

    .line 53
    iput-object p1, p0, Lcom/facebook/loom/logger/FileLogWriter;->c:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/facebook/loom/logger/FileLogWriter;->d:Ljava/lang/String;

    .line 55
    new-instance v1, Lcom/facebook/loom/logger/LogEntry;

    sget-object v3, Lcom/facebook/loom/logger/LogEntry$EntryType;->UNKNOWN_TYPE:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const-wide/16 v4, 0x0

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v1 .. v8}, Lcom/facebook/loom/logger/LogEntry;-><init>(ILcom/facebook/loom/logger/LogEntry$EntryType;JIII)V

    iput-object v1, p0, Lcom/facebook/loom/logger/FileLogWriter;->g:Lcom/facebook/loom/logger/LogEntry;

    .line 56
    return-void
.end method

.method private static a(J)J
    .locals 4

    .prologue
    .line 178
    sget v0, Lcom/facebook/loom/logger/FileLogWriter;->b:I

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    add-long/2addr v0, p0

    sget v2, Lcom/facebook/loom/logger/FileLogWriter;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 147
    iget-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->e:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 148
    iget-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->e:Ljava/lang/StringBuilder;

    const-string v1, "dt\nver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/loom/logger/FileLogWriter;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cmap|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "prec|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pid|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    iget-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    iget-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()I
    .locals 6

    .prologue
    .line 182
    iget-object v1, p0, Lcom/facebook/loom/logger/FileLogWriter;->e:Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 184
    iget-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->f:[B

    array-length v0, v0

    if-le v2, v0, :cond_0

    .line 186
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->f:[B

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/facebook/loom/logger/FileLogWriter;->f:[B

    .line 191
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 193
    const/16 v5, 0x80

    if-ge v4, v5, :cond_1

    .line 194
    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 191
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    const/16 v4, 0x2e

    aput-byte v4, v3, v0

    goto :goto_1

    .line 200
    :cond_2
    return v2
.end method

.method private b(Lcom/facebook/loom/logger/LogEntry;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-boolean v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->h:Z

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/loom/logger/FileLogWriter;->j:J

    .line 125
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/loom/logger/FileLogWriter;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 130
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/facebook/loom/logger/FileLogWriter;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v0, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/facebook/loom/logger/FileLogWriter;->i:Ljava/io/OutputStream;

    .line 132
    iget-object v2, p0, Lcom/facebook/loom/logger/FileLogWriter;->i:Ljava/io/OutputStream;

    invoke-direct {p0}, Lcom/facebook/loom/logger/FileLogWriter;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/loom/logger/FileLogWriter;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->h:Z

    .line 144
    :cond_1
    return-void

    .line 137
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/facebook/loom/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 138
    iget-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->i:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/loom/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 139
    iput-object v1, p0, Lcom/facebook/loom/logger/FileLogWriter;->i:Ljava/io/OutputStream;

    goto :goto_0

    .line 137
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/facebook/loom/logger/LogEntry;)J
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x7c

    .line 59
    iget-boolean v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->h:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/loom/logger/FileLogWriter;->b(Lcom/facebook/loom/logger/LogEntry;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->i:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 64
    const-wide/16 v0, -0x1

    .line 113
    :goto_0
    return-wide v0

    .line 71
    :cond_1
    iget-wide v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->j:J

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 72
    invoke-static {v0, v1}, Lcom/facebook/loom/logger/FileLogWriter;->a(J)J

    move-result-wide v3

    .line 73
    iget-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->g:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v0}, Lcom/facebook/loom/logger/LogEntry;->c()J

    move-result-wide v0

    sub-long v0, v3, v0

    .line 75
    iget-object v2, p0, Lcom/facebook/loom/logger/FileLogWriter;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    iget-object v2, p0, Lcom/facebook/loom/logger/FileLogWriter;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->a()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/loom/logger/FileLogWriter;->g:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v6}, Lcom/facebook/loom/logger/LogEntry;->a()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->b()Lcom/facebook/loom/logger/LogEntry$EntryType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->d()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/loom/logger/FileLogWriter;->g:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v2}, Lcom/facebook/loom/logger/LogEntry;->d()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->e()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/loom/logger/FileLogWriter;->g:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v2}, Lcom/facebook/loom/logger/LogEntry;->e()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->f()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/loom/logger/FileLogWriter;->g:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v2}, Lcom/facebook/loom/logger/LogEntry;->f()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->g()J

    move-result-wide v6

    iget-object v1, p0, Lcom/facebook/loom/logger/FileLogWriter;->g:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {v1}, Lcom/facebook/loom/logger/LogEntry;->g()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    iget-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->e:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {p0}, Lcom/facebook/loom/logger/FileLogWriter;->b()I

    move-result v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/facebook/loom/logger/FileLogWriter;->i:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/facebook/loom/logger/FileLogWriter;->f:[B

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->g:Lcom/facebook/loom/logger/LogEntry;

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->b()Lcom/facebook/loom/logger/LogEntry$EntryType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->d()I

    move-result v5

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->e()I

    move-result v6

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->f()I

    move-result v7

    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->g()J

    move-result-wide v8

    invoke-virtual/range {v0 .. v9}, Lcom/facebook/loom/logger/LogEntry;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;JIIIJ)Lcom/facebook/loom/logger/LogEntry;

    .line 113
    invoke-virtual {p1}, Lcom/facebook/loom/logger/LogEntry;->a()I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_0

    .line 100
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->i:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/loom/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->i:Ljava/io/OutputStream;

    goto :goto_1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->i:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/loom/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/loom/logger/FileLogWriter;->i:Ljava/io/OutputStream;

    .line 206
    return-void
.end method
