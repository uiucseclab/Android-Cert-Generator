.class Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;
.super Ljava/lang/Object;
.source "YouTubeWebPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YouTubePlayerInterface"
.end annotation


# instance fields
.field private embedcode:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

.field private videoDurationInMillis:I

.field private videoPositionInMillis:I


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmbedCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->embedcode:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDurationInMillis()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->videoDurationInMillis:I

    return v0
.end method

.method public getVideoPositionInMillis()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->videoPositionInMillis:I

    return v0
.end method

.method public onLoaded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 285
    const-string v0, "Youtube:  onLoaded "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$1;

    invoke-direct {v1, p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "newState"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    # setter for: Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->playerState:I
    invoke-static {v1, p1}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->access$002(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;I)I

    .line 316
    invoke-static {p1}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;->find(I)Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;

    move-result-object v0

    .line 317
    .local v0, "state":Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;
    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$1;->$SwitchMap$com$samsung$milk$milkvideo$fragments$YouTubeWebPlayerFragment$YouTubePlayerState:[I

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 319
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$2;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 327
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    # setter for: Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->isVideoBuffering:Z
    invoke-static {v1, v3}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->access$102(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;Z)Z

    .line 328
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface$3;-><init>(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 336
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    # setter for: Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->isVideoBuffering:Z
    invoke-static {v1, v3}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->access$102(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;Z)Z

    .line 337
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->this$0:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setEmbedcode(Ljava/lang/String;)V
    .locals 0
    .param p1, "embedCode"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->embedcode:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setVideoDurationInSeconds(I)V
    .locals 1
    .param p1, "seconds"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 306
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->videoDurationInMillis:I

    .line 307
    return-void
.end method

.method public setVideoPositionInSeconds(I)V
    .locals 1
    .param p1, "seconds"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 297
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerInterface;->videoPositionInMillis:I

    .line 298
    return-void
.end method
