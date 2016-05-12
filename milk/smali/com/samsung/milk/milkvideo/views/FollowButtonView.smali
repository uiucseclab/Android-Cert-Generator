.class public Lcom/samsung/milk/milkvideo/views/FollowButtonView;
.super Landroid/widget/ImageButton;
.source "FollowButtonView.java"


# static fields
.field private static final STATE_FOLLOWING:[I


# instance fields
.field private brand:Z

.field private following:Z

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01005e

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->STATE_FOLLOWING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->brand:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->brand:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->brand:Z

    .line 25
    return-void
.end method


# virtual methods
.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->user:Ljava/lang/String;

    return-object v0
.end method

.method public isBrand()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->brand:Z

    return v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->following:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 38
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 39
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->following:Z

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->STATE_FOLLOWING:[I

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->mergeDrawableStates([I[I)[I

    .line 42
    :cond_0
    return-object v0
.end method

.method public setBrand(Z)V
    .locals 0
    .param p1, "brand"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->brand:Z

    return-void
.end method

.method public setFollowing(Z)V
    .locals 0
    .param p1, "following"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->following:Z

    .line 33
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->refreshDrawableState()V

    .line 34
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/FollowButtonView;->user:Ljava/lang/String;

    .line 51
    return-void
.end method
