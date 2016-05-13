.class Lcom/facebook/analytics/appstatelogger/AppStateLogger$BreakpadOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "volume_increase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 424
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 432
    iget v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$BreakpadOutputStream;->count:I

    iget-object v1, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$BreakpadOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/AppStateLogger$BreakpadOutputStream;->buf:[B

    invoke-static {v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->setBreakpadStreamData([B)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger$BreakpadOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/analytics/appstatelogger/AppStateLogger;->setBreakpadStreamData([B)V

    goto :goto_0
.end method
