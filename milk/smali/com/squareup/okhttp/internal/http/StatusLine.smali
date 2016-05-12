.class public final Lcom/squareup/okhttp/internal/http/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# static fields
.field public static final HTTP_CONTINUE:I = 0x64

.field public static final HTTP_TEMP_REDIRECT:I = 0x133


# instance fields
.field public final code:I

.field public final message:Ljava/lang/String;

.field public final protocol:Lcom/squareup/okhttp/Protocol;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Protocol;ILjava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 20
    iput p2, p0, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    .line 21
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static get(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/StatusLine;
    .locals 4
    .param p0, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 25
    new-instance v0, Lcom/squareup/okhttp/internal/http/StatusLine;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->protocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v2

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/StatusLine;-><init>(Lcom/squareup/okhttp/Protocol;ILjava/lang/String;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;
    .locals 9
    .param p0, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    .line 35
    const-string v6, "HTTP/1."

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x9

    if-lt v6, v7, :cond_0

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_1

    .line 37
    :cond_0
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 39
    :cond_1
    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v3, v6, -0x30

    .line 40
    .local v3, "httpMinorVersion":I
    const/16 v1, 0x9

    .line 41
    .local v1, "codeStart":I
    if-nez v3, :cond_2

    .line 42
    sget-object v5, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    .line 57
    .end local v3    # "httpMinorVersion":I
    .local v5, "protocol":Lcom/squareup/okhttp/Protocol;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v1, 0x3

    if-ge v6, v7, :cond_6

    .line 58
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 43
    .end local v5    # "protocol":Lcom/squareup/okhttp/Protocol;
    .restart local v3    # "httpMinorVersion":I
    :cond_2
    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    .line 44
    sget-object v5, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    .restart local v5    # "protocol":Lcom/squareup/okhttp/Protocol;
    goto :goto_0

    .line 46
    .end local v5    # "protocol":Lcom/squareup/okhttp/Protocol;
    :cond_3
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 48
    .end local v1    # "codeStart":I
    .end local v3    # "httpMinorVersion":I
    :cond_4
    const-string v6, "ICY "

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 50
    sget-object v5, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    .line 51
    .restart local v5    # "protocol":Lcom/squareup/okhttp/Protocol;
    const/4 v1, 0x4

    .restart local v1    # "codeStart":I
    goto :goto_0

    .line 53
    .end local v1    # "codeStart":I
    .end local v5    # "protocol":Lcom/squareup/okhttp/Protocol;
    :cond_5
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 62
    .restart local v1    # "codeStart":I
    .restart local v5    # "protocol":Lcom/squareup/okhttp/Protocol;
    :cond_6
    add-int/lit8 v6, v1, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 69
    .local v0, "code":I
    const-string v4, ""

    .line 70
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v1, 0x3

    if-le v6, v7, :cond_8

    .line 71
    add-int/lit8 v6, v1, 0x3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_7

    .line 72
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    .end local v0    # "code":I
    .end local v4    # "message":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 74
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "code":I
    .restart local v4    # "message":Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v1, 0x4

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    :cond_8
    new-instance v6, Lcom/squareup/okhttp/internal/http/StatusLine;

    invoke-direct {v6, v5, v0, v4}, Lcom/squareup/okhttp/internal/http/StatusLine;-><init>(Lcom/squareup/okhttp/Protocol;ILjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v2, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-ne v1, v2, :cond_1

    const-string v1, "HTTP/1.0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 82
    :cond_1
    const-string v1, "HTTP/1.1"

    goto :goto_0
.end method
