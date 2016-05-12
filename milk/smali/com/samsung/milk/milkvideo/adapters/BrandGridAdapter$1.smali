.class Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter$1;
.super Ljava/lang/Object;
.source "BrandGridAdapter.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;->getSelectedList()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/samsung/milk/milkvideo/models/SelectableUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter$1;->this$0:Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/samsung/milk/milkvideo/models/SelectableUser;)Z
    .locals 1
    .param p1, "selectableUser"    # Lcom/samsung/milk/milkvideo/models/SelectableUser;

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/SelectableUser;->isSelected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lcom/samsung/milk/milkvideo/models/SelectableUser;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter$1;->apply(Lcom/samsung/milk/milkvideo/models/SelectableUser;)Z

    move-result v0

    return v0
.end method
