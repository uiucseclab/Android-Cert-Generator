.class Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$7;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->setupCondensableHeader(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$7;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$7;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 380
    return-void
.end method
