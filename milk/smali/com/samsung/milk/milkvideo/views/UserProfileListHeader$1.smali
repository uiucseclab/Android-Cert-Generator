.class Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$1;
.super Ljava/lang/Object;
.source "UserProfileListHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->findSubViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$1;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$1;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->FOLLOWERS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader$1;->this$0:Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;->user:Lcom/samsung/milk/milkvideo/models/User;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/milk/milkvideo/activity/FollowsActivity;->start(Landroid/content/Context;Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;Ljava/lang/String;)V

    .line 70
    return-void
.end method
