.class public Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;
.super Landroid/widget/RelativeLayout;
.source "SuggestedUserListItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$1;,
        Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$SuggestedUserClickListener;
    }
.end annotation


# instance fields
.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 27
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030052

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    const v1, 0x7f06012f

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$SuggestedUserClickListener;

    invoke-direct {v2, p0, v3}, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$SuggestedUserClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v1, 0x7f060130

    invoke-virtual {p0, v1}, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$SuggestedUserClickListener;

    invoke-direct {v2, p0, v3}, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$SuggestedUserClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;->uuid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;->uuid:Ljava/lang/String;

    .line 39
    return-void
.end method
