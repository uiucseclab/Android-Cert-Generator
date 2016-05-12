.class public Lcom/samsung/milk/milkvideo/events/PlayerStateChangeEvent;
.super Ljava/lang/Object;
.source "PlayerStateChangeEvent.java"


# instance fields
.field private state:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/PlayerStateChangeEvent;->state:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;

    .line 11
    return-void
.end method


# virtual methods
.method public getState()Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/PlayerStateChangeEvent;->state:Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment$YouTubePlayerState;

    return-object v0
.end method
