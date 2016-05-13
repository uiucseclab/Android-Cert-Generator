.class Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;
.super Ljava/io/OutputStream;
.source "video/3gpp"


# instance fields
.field final synthetic a:Lcom/facebook/analytics/appstatelogger/AppStateLogFile;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/facebook/analytics/appstatelogger/AppStateLogFile;)V
    .locals 1

    .prologue
    .line 171
    iput-object p1, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogFile;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->b:Z

    .line 173
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->b:Z

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->a()V

    .line 178
    invoke-virtual {p0}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->flush()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->b:Z

    .line 182
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogFile;

    iget-object v0, v0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogFile;

    invoke-virtual {v1, v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->a([B)V

    .line 185
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogFile;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, v0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->d:Z

    .line 186
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->a()V

    .line 191
    return-void
.end method

.method public write(I)V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->a()V

    .line 208
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogFile;

    iget-object v0, v0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 209
    return-void
.end method

.method public write([B)V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->a()V

    .line 196
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogFile;

    iget-object v0, v0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 197
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->a()V

    .line 202
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile$ContentOutputStream;->a:Lcom/facebook/analytics/appstatelogger/AppStateLogFile;

    iget-object v0, v0, Lcom/facebook/analytics/appstatelogger/AppStateLogFile;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 203
    return-void
.end method
