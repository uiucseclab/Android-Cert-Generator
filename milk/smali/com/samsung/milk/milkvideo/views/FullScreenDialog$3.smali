.class final Lcom/samsung/milk/milkvideo/views/FullScreenDialog$3;
.super Ljava/lang/Object;
.source "FullScreenDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->setUpDialog(Lcom/samsung/milk/milkvideo/views/FullScreenDialog;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fullScreenDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/FullScreenDialog;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$3;->val$fullScreenDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$3;->val$fullScreenDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->dismiss()V

    .line 60
    return-void
.end method
