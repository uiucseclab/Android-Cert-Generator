.class public final Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;
.super Ljava/lang/Object;
.source "SlookSmartClip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartClip"


# instance fields
.field private mDataExtractionListener:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    .line 72
    iput-object v1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    .line 73
    iput-object v1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mDataExtractionListener:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mDataExtractionListener:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;

    return-object v0
.end method

.method private isSupport(I)Z
    .locals 2
    .param p1, "ver"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V
    .locals 1
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->addMetaTag(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    goto :goto_0
.end method

.method public clearAllMetaTag()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->clearAllMetaTag(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public extractDefaultSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 1
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 156
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v0

    goto :goto_0
.end method

.method public removeMetaTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->removeMetaTag(Landroid/view/View;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setDataExtractionListener(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mDataExtractionListener:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$1;-><init>(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;)V

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->setDataExtractionListener(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;)Z

    goto :goto_0
.end method
