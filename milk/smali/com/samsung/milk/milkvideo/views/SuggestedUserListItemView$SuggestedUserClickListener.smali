.class Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$SuggestedUserClickListener;
.super Ljava/lang/Object;
.source "SuggestedUserListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestedUserClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$SuggestedUserClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$SuggestedUserClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$SuggestedUserClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$SuggestedUserClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;->uuid:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;->access$100(Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$SuggestedUserClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 46
    return-void
.end method
