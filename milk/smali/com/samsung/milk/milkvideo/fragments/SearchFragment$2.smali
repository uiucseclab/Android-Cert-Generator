.class Lcom/samsung/milk/milkvideo/fragments/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$2;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->search()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$000(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    .line 87
    return-void
.end method
