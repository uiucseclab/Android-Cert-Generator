.class Lcom/samsung/milk/milkvideo/views/FacepileLayout$2;
.super Ljava/lang/Object;
.source "FacepileLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/FacepileLayout;->reset(Ljava/lang/String;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

.field final synthetic val$embedCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/FacepileLayout;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout$2;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout$2;->val$embedCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout$2;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;->REPOSTER_LIST_VIDEO_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout$2;->val$embedCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/FacepileLayout$2;->this$0:Lcom/samsung/milk/milkvideo/views/FacepileLayout;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/views/FacepileLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
