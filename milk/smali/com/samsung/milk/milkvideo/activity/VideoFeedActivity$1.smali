.class Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$1;
.super Ljava/lang/Object;
.source "VideoFeedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->onVideoFeedReady(Lcom/samsung/milk/milkvideo/events/VideoFeedReadyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$1;->this$0:Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$1;->this$0:Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->videoFeedFragment:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->populateVideoFeed()V

    .line 237
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity$1;->this$0:Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->categoryFragment:Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;->populateCategories()V

    .line 238
    return-void
.end method
