.class public Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;
.super Ljava/lang/Object;
.source "VideoOnAudioFocusChangeListener.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;
    }
.end annotation


# instance fields
.field private listener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public addFocusChangeResponseListener(Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;->listener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;

    .line 11
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 15
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;->listener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;->listener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;

    invoke-interface {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;->requestAudioFocus(Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;)V

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;->listener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;->listener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;

    invoke-interface {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;->abandonAudioFocus(Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;)V

    .line 22
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;->listener:Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener$FocusChangeResponse;->pauseOnAudioFocusChange()V

    goto :goto_0
.end method
