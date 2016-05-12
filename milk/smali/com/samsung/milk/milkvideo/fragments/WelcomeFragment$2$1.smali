.class Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2$1;
.super Ljava/lang/Object;
.source "WelcomeFragment.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/samsung/milk/milkvideo/models/SelectableUser;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2$1;->this$1:Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, Lcom/samsung/milk/milkvideo/models/SelectableUser;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2$1;->apply(Lcom/samsung/milk/milkvideo/models/SelectableUser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lcom/samsung/milk/milkvideo/models/SelectableUser;)Ljava/lang/String;
    .locals 1
    .param p1, "selectableUser"    # Lcom/samsung/milk/milkvideo/models/SelectableUser;

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/SelectableUser;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
