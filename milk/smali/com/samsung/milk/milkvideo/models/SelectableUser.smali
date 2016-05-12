.class public Lcom/samsung/milk/milkvideo/models/SelectableUser;
.super Lcom/samsung/milk/milkvideo/models/User;
.source "SelectableUser.java"


# instance fields
.field private volatile selected:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 1
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/models/User;-><init>(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/SelectableUser;->selected:Z

    .line 12
    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/SelectableUser;->selected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/models/SelectableUser;->selected:Z

    .line 20
    return-void
.end method
