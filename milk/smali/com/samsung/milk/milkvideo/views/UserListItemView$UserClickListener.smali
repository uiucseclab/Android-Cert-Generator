.class Lcom/samsung/milk/milkvideo/views/UserListItemView$UserClickListener;
.super Ljava/lang/Object;
.source "UserListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/UserListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/UserListItemView;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/views/UserListItemView;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/UserListItemView$UserClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/UserListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/views/UserListItemView;Lcom/samsung/milk/milkvideo/views/UserListItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/views/UserListItemView;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/views/UserListItemView$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/UserListItemView$UserClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/UserListItemView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserListItemView$UserClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/UserListItemView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/UserListItemView$UserClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/UserListItemView;

    # getter for: Lcom/samsung/milk/milkvideo/views/UserListItemView;->uuid:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/views/UserListItemView;->access$100(Lcom/samsung/milk/milkvideo/views/UserListItemView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    return-void
.end method
