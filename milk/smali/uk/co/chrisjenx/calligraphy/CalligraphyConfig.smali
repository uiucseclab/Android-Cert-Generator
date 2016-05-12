.class public Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
.super Ljava/lang/Object;
.source "CalligraphyConfig.java"


# static fields
.field private static mInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;


# instance fields
.field private final mAttrId:I

.field private final mFontPath:Ljava/lang/String;

.field private final mIsFontSet:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "attrId"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>(Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultFontAssetPath"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>(Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "defaultFontAssetPath"    # Ljava/lang/String;
    .param p2, "attrId"    # I

    .prologue
    const/4 v1, -0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mFontPath:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mIsFontSet:Z

    .line 72
    if-eq p2, v1, :cond_1

    .end local p2    # "attrId":I
    :goto_1
    iput p2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mAttrId:I

    .line 73
    return-void

    .line 71
    .restart local p2    # "attrId":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 72
    goto :goto_1
.end method

.method static get()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    invoke-direct {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>()V

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    .line 49
    :cond_0
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    return-object v0
.end method

.method public static initDefault(I)V
    .locals 1
    .param p0, "defaultAttributeId"    # I

    .prologue
    .line 31
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    invoke-direct {v0, p0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>(I)V

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    .line 32
    return-void
.end method

.method public static initDefault(Ljava/lang/String;)V
    .locals 1
    .param p0, "defaultFontAssetPath"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    invoke-direct {v0, p0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>(Ljava/lang/String;)V

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    .line 22
    return-void
.end method

.method public static initDefault(Ljava/lang/String;I)V
    .locals 1
    .param p0, "defaultFontAssetPath"    # Ljava/lang/String;
    .param p1, "defaultAttributeId"    # I

    .prologue
    .line 43
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    invoke-direct {v0, p0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    .line 44
    return-void
.end method


# virtual methods
.method public getAttrId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mAttrId:I

    return v0
.end method

.method getFontPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mFontPath:Ljava/lang/String;

    return-object v0
.end method

.method isFontSet()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mIsFontSet:Z

    return v0
.end method
