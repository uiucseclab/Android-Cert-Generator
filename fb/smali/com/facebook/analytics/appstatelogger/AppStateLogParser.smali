.class public Lcom/facebook/analytics/appstatelogger/AppStateLogParser;
.super Ljava/lang/Object;
.source "stss"


# static fields
.field private static a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Ljava/security/MessageDigest;

.field private final c:[B

.field private final d:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->b:Ljava/security/MessageDigest;

    .line 37
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    .line 38
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->c:[B

    .line 39
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->d:[B

    .line 40
    return-void
.end method

.method private static a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 110
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->a:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->a:Ljava/nio/charset/Charset;

    .line 105
    :cond_0
    sget-object v0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->a:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private a(Ljava/io/InputStream;Lcom/facebook/analytics/logger/HoneyClientEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 58
    invoke-static {}, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 68
    int-to-char v2, v2

    .line 69
    const-string v3, "status"

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 73
    :try_start_1
    iget-object v2, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->d:[B

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 74
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->d:[B

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    const-string v2, "checksum"

    invoke-virtual {p2, v2, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 82
    :try_start_2
    iget-object v2, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->b:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 83
    new-instance v2, Ljava/security/DigestInputStream;

    iget-object v3, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->b:Ljava/security/MessageDigest;

    invoke-direct {v2, p1, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 84
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 86
    invoke-static {v3}, Lcom/google/common/io/CharStreams;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->b:Ljava/security/MessageDigest;

    iget-object v3, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->c:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->c:[B

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 91
    const-string v2, "contents"

    invoke-virtual {p2, v2, v0}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 93
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->c:[B

    invoke-static {v0, v6}, Lcom/facebook/common/util/Hex;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/facebook/analytics/appstatelogger/AppStateLogParser$AppStateLogParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checksum does not match. Expected \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogParser$AppStateLogParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Lcom/facebook/analytics/appstatelogger/AppStateLogParser$AppStateLogParserException;

    const-string v2, "Error reading status byte"

    invoke-direct {v1, v2, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogParser$AppStateLogParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 75
    :catch_1
    move-exception v0

    .line 76
    new-instance v1, Lcom/facebook/analytics/appstatelogger/AppStateLogParser$AppStateLogParserException;

    const-string v2, "Error reading checksum"

    invoke-direct {v1, v2, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogParser$AppStateLogParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 88
    :catch_2
    move-exception v0

    .line 89
    new-instance v1, Lcom/facebook/analytics/appstatelogger/AppStateLogParser$AppStateLogParserException;

    const-string v2, "Error reading log contents"

    invoke-direct {v1, v2, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogParser$AppStateLogParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lcom/facebook/analytics/logger/HoneyClientEvent;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/analytics/logger/HoneyClientEvent;

    const-string v1, "fbandroid_cold_start"

    invoke-direct {v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 46
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->a(Ljava/io/InputStream;Lcom/facebook/analytics/logger/HoneyClientEvent;)V
    :try_end_0
    .catch Lcom/facebook/analytics/appstatelogger/AppStateLogParser$AppStateLogParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    invoke-static {v1}, Lcom/facebook/analytics/appstatelogger/AppStateLogParser;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v2, "logParseError"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    goto :goto_0
.end method
