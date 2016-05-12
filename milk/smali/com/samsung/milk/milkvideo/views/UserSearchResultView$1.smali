.class Lcom/samsung/milk/milkvideo/views/UserSearchResultView$1;
.super Ljava/lang/Object;
.source "UserSearchResultView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/UserSearchResultView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/UserSearchResultView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/UserSearchResultView$1;->this$0:Lcom/samsung/milk/milkvideo/views/UserSearchResultView;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/views/UserSearchResultView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserSearchResultView$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserSearchResultView$1;->this$0:Lcom/samsung/milk/milkvideo/views/UserSearchResultView;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->userUuid:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/views/UserSearchResultView;->access$000(Lcom/samsung/milk/milkvideo/views/UserSearchResultView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    return-void
.end method
