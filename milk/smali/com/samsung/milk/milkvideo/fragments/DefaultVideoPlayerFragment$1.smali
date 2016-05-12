.class Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment$1;
.super Ljava/lang/Object;
.source "DefaultVideoPlayerFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->loadVideo(Lcom/samsung/milk/milkvideo/models/Video;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/samsung/milk/milkvideo/models/OoyalaStream;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;

.field final synthetic val$finalDesiredBitrate:I


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;I)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;

    iput p2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment$1;->val$finalDesiredBitrate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 132
    const-string v0, "Failed to retrieve .mp4 URL, using .m3u8 stream instead"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->onLoadVideo()V

    .line 134
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lretrofit/client/Response;

    .prologue
    .line 119
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment$1;->success(Ljava/util/List;Lretrofit/client/Response;)V

    return-void
.end method

.method public success(Ljava/util/List;Lretrofit/client/Response;)V
    .locals 4
    .param p2, "response"    # Lretrofit/client/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/OoyalaStream;",
            ">;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "ooyalaStreams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/milk/milkvideo/models/OoyalaStream;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/milk/milkvideo/models/OoyalaStream;

    .line 123
    .local v1, "stream":Lcom/samsung/milk/milkvideo/models/OoyalaStream;
    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/OoyalaStream;->getAverageVideoBitrate()Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment$1;->val$finalDesiredBitrate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/OoyalaStream;->getMuxingFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MP4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/OoyalaStream;->getUrl()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->streamUrl:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->access$002(Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 127
    .end local v1    # "stream":Lcom/samsung/milk/milkvideo/models/OoyalaStream;
    :cond_1
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;->onLoadVideo()V

    .line 128
    return-void
.end method
