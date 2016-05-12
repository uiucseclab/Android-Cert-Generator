.class Lcom/samsung/milk/milkvideo/fragments/SearchFragment$7;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->initSearchHeader()V
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
    .line 229
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$7;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SearchFragment$7;->this$0:Lcom/samsung/milk/milkvideo/fragments/SearchFragment;

    # invokes: Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->startSeeAllUsersActivityIntent()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/SearchFragment;->access$1300(Lcom/samsung/milk/milkvideo/fragments/SearchFragment;)V

    .line 233
    return-void
.end method
