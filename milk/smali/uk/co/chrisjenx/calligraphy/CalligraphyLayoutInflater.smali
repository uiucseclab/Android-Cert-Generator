.class Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "CalligraphyLayoutInflater.java"


# instance fields
.field private final mAttributeId:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeId"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 16
    iput p2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;->mAttributeId:I

    .line 17
    invoke-direct {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;->setUpLayoutFactory()V

    .line 18
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;I)V
    .locals 0
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;
    .param p3, "attributeId"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 22
    iput p3, p0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;->mAttributeId:I

    .line 23
    invoke-direct {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;->setUpLayoutFactory()V

    .line 24
    return-void
.end method

.method private setUpLayoutFactory()V
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v0, v0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;

    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    iget v2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;->mAttributeId:I

    invoke-direct {v0, v1, v2}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;-><init>(Landroid/view/LayoutInflater$Factory;I)V

    invoke-virtual {p0, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "newContext"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;

    iget v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;->mAttributeId:I

    invoke-direct {v0, p0, p1, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;I)V

    return-object v0
.end method
