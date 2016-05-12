.class Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$2;
.super Landroid/telephony/PhoneStateListener;
.source "VideoPlayerContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 145
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;->pauseVideo()V

    .line 148
    :cond_1
    return-void
.end method
