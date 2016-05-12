.class Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$1;
.super Ljava/lang/Object;
.source "VideoListEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->onVideoListItemClicked(Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$1;->this$0:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler$1;->this$0:Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->ignorePlayRequest:Z
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;->access$002(Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;Z)Z

    .line 56
    return-void
.end method
