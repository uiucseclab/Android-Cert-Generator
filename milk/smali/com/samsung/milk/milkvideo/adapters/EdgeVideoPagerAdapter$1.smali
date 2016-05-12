.class Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter$1;
.super Ljava/lang/Object;
.source "EdgeVideoPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

.field final synthetic val$video:Lcom/samsung/milk/milkvideo/models/Video;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;Lcom/samsung/milk/milkvideo/models/Video;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter$1;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;

    # getter for: Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->eventBus:Lcom/squareup/otto/Bus;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;->access$000(Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter$1;->val$video:Lcom/samsung/milk/milkvideo/models/Video;

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/VideoListItemClickedEvent;-><init>(Lcom/samsung/milk/milkvideo/models/Video;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
