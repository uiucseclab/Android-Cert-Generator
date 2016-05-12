.class Lcom/samsung/milk/milkvideo/views/BrandGridItemView$1;
.super Ljava/lang/Object;
.source "BrandGridItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/BrandGridItemView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/BrandGridItemView;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/BrandGridItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/BrandGridItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/BrandGridItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/BrandGridItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->user:Lcom/samsung/milk/milkvideo/models/SelectableUser;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->access$000(Lcom/samsung/milk/milkvideo/views/BrandGridItemView;)Lcom/samsung/milk/milkvideo/models/SelectableUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/SelectableUser;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/BrandGridItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/BrandGridItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->user:Lcom/samsung/milk/milkvideo/models/SelectableUser;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->access$000(Lcom/samsung/milk/milkvideo/views/BrandGridItemView;)Lcom/samsung/milk/milkvideo/models/SelectableUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/SelectableUser;->setSelected(Z)V

    .line 46
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/BrandGridItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/BrandGridItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->icon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->access$100(Lcom/samsung/milk/milkvideo/views/BrandGridItemView;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/BrandGridItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/BrandGridItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->user:Lcom/samsung/milk/milkvideo/models/SelectableUser;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->access$000(Lcom/samsung/milk/milkvideo/views/BrandGridItemView;)Lcom/samsung/milk/milkvideo/models/SelectableUser;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/SelectableUser;->setSelected(Z)V

    .line 49
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/BrandGridItemView$1;->this$0:Lcom/samsung/milk/milkvideo/views/BrandGridItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->icon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/BrandGridItemView;->access$100(Lcom/samsung/milk/milkvideo/views/BrandGridItemView;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
