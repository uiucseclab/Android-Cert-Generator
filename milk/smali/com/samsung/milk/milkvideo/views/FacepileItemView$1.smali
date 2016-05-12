.class Lcom/samsung/milk/milkvideo/views/FacepileItemView$1;
.super Ljava/lang/Object;
.source "FacepileItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/FacepileItemView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/FacepileItemView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/FacepileItemView;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/FacepileItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/FacepileItemView;->expandListener:Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->access$000(Lcom/samsung/milk/milkvideo/views/FacepileItemView;)Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/views/FacepileItemView$FacepileExpandClickListener;->onClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileItemView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/FacepileItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/FacepileItemView;->reposter:Lcom/samsung/milk/milkvideo/models/FacepileReposter;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/views/FacepileItemView;->access$100(Lcom/samsung/milk/milkvideo/views/FacepileItemView;)Lcom/samsung/milk/milkvideo/models/FacepileReposter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/FacepileReposter;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method
