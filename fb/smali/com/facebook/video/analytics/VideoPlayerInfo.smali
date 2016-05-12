.class public Lcom/facebook/video/analytics/VideoPlayerInfo;
.super Ljava/lang/Object;
.source "te"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/video/analytics/VideoPlayerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

.field private b:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/video/analytics/VideoPlayerInfo$1;

    invoke-direct {v0}, Lcom/facebook/video/analytics/VideoPlayerInfo$1;-><init>()V

    sput-object v0, Lcom/facebook/video/analytics/VideoPlayerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->UNKNOWN:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoPlayerInfo;->b:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->asPlayerType(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoPlayerInfo;->a:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->asPlayerOrigin(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoPlayerInfo;->b:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->UNKNOWN:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoPlayerInfo;->b:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 21
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoPlayerInfo;->a:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPlayerInfo;->b:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    return-object v0
.end method

.method public final a(Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoPlayerInfo;->b:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 26
    return-void
.end method

.method public final b()Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPlayerInfo;->a:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPlayerInfo;->a:Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;

    iget-object v0, v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerType;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoPlayerInfo;->b:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    invoke-virtual {v0}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return-void
.end method
