.class Lcom/samsung/milk/milkvideo/views/FacepileLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FacepileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/FacepileLayout;->collapse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/FacepileLayout;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/FacepileLayout;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout$3;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout$3;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    # getter for: Lcom/samsung/milk/milkvideo/views/FacepileLayout;->facepileGradient:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->access$000(Lcom/samsung/milk/milkvideo/views/FacepileLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    return-void
.end method
