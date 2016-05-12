.class public Lcom/samsung/milk/milkvideo/models/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
    value = {
        "profileImageChanged"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/milk/milkvideo/models/User;",
            ">;"
        }
    .end annotation
.end field

.field private static final delim:Ljava/lang/String; = "%%%@"


# instance fields
.field private brand:Z

.field private brandUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "brand_url"
    .end annotation
.end field

.field private email:Ljava/lang/String;

.field private facebookId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "facebook_id"
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "first_name"
    .end annotation
.end field

.field private followedByMe:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "followed_by_me"
    .end annotation
.end field

.field private followerCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "follower_count"
    .end annotation
.end field

.field private followingCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "following_count"
    .end annotation
.end field

.field private iconSelectableUri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "icon_selectable_uri"
    .end annotation
.end field

.field private iconUri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "icon_uri"
    .end annotation
.end field

.field private iconUserListUri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "icon_user_list_uri"
    .end annotation
.end field

.field private iconVideoListUri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "icon_video_list_uri"
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "last_name"
    .end annotation
.end field

.field private password:Ljava/lang/String;

.field private profileBackgroundUri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "profile_background_uri"
    .end annotation
.end field

.field private profileImageChanged:Z

.field private profileImageData:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "profile_image_data"
    .end annotation
.end field

.field private repostCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "repost_count"
    .end annotation
.end field

.field private softLoginId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "soft_login_id"
    .end annotation
.end field

.field private username:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/samsung/milk/milkvideo/models/User$1;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/models/User$1;-><init>()V

    sput-object v0, Lcom/samsung/milk/milkvideo/models/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837669"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    .line 37
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837770"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconSelectableUri:Ljava/lang/String;

    .line 39
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837770"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUserListUri:Ljava/lang/String;

    .line 41
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837770"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconVideoListUri:Ljava/lang/String;

    .line 43
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837754"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->profileBackgroundUri:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/User;->brand:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v2, "android.resource://com.samsung.milk.milkvideo/2130837669"

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    .line 37
    const-string v2, "android.resource://com.samsung.milk.milkvideo/2130837770"

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconSelectableUri:Ljava/lang/String;

    .line 39
    const-string v2, "android.resource://com.samsung.milk.milkvideo/2130837770"

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUserListUri:Ljava/lang/String;

    .line 41
    const-string v2, "android.resource://com.samsung.milk.milkvideo/2130837770"

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconVideoListUri:Ljava/lang/String;

    .line 43
    const-string v2, "android.resource://com.samsung.milk.milkvideo/2130837754"

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->profileBackgroundUri:Ljava/lang/String;

    .line 45
    iput-boolean v4, p0, Lcom/samsung/milk/milkvideo/models/User;->brand:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->email:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->uuid:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->username:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->firstName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->lastName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconSelectableUri:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUserListUri:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconVideoListUri:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "brandInt":I
    if-ne v0, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/models/User;->brand:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->password:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->softLoginId:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->facebookId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/milk/milkvideo/models/User;->followerCount:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/milk/milkvideo/models/User;->repostCount:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "followedByMeInt":I
    if-ne v1, v3, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/milk/milkvideo/models/User;->followedByMe:Z

    .line 88
    return-void

    .end local v1    # "followedByMeInt":I
    :cond_0
    move v2, v4

    .line 79
    goto :goto_0

    .restart local v1    # "followedByMeInt":I
    :cond_1
    move v3, v4

    .line 87
    goto :goto_1
.end method

.method public constructor <init>(Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 1
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837669"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    .line 37
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837770"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconSelectableUri:Ljava/lang/String;

    .line 39
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837770"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUserListUri:Ljava/lang/String;

    .line 41
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837770"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconVideoListUri:Ljava/lang/String;

    .line 43
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837754"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->profileBackgroundUri:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/User;->brand:Z

    .line 91
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->email:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->uuid:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->username:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->firstName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->firstName:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->lastName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->lastName:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->iconSelectableUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconSelectableUri:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->iconUserListUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUserListUri:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->iconVideoListUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconVideoListUri:Ljava/lang/String;

    .line 100
    iget-boolean v0, p1, Lcom/samsung/milk/milkvideo/models/User;->brand:Z

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/User;->brand:Z

    .line 101
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->brandUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->brandUrl:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->password:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->softLoginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->softLoginId:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/samsung/milk/milkvideo/models/User;->facebookId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->facebookId:Ljava/lang/String;

    .line 105
    iget v0, p1, Lcom/samsung/milk/milkvideo/models/User;->followerCount:I

    iput v0, p0, Lcom/samsung/milk/milkvideo/models/User;->followerCount:I

    .line 106
    iget v0, p1, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I

    iput v0, p0, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "iconUri"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837669"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    .line 37
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837770"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconSelectableUri:Ljava/lang/String;

    .line 39
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837770"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUserListUri:Ljava/lang/String;

    .line 41
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837770"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconVideoListUri:Ljava/lang/String;

    .line 43
    const-string v0, "android.resource://com.samsung.milk.milkvideo/2130837754"

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->profileBackgroundUri:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/User;->brand:Z

    .line 110
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->username:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 396
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 400
    :goto_0
    return v1

    .line 397
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 399
    check-cast v0, Lcom/samsung/milk/milkvideo/models/User;

    .line 400
    .local v0, "that":Lcom/samsung/milk/milkvideo/models/User;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/models/User;->uuid:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/milk/milkvideo/models/User;->uuid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBrandUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->brandUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->facebookId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowerCount()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/samsung/milk/milkvideo/models/User;->followerCount:I

    return v0
.end method

.method public getFollowingCount()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I

    return v0
.end method

.method public getIconSelectableUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconSelectableUri:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUserListUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUserListUri:Ljava/lang/String;

    return-object v0
.end method

.method public getIconVideoListUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconVideoListUri:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBackgroundUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->profileBackgroundUri:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageChanged()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/User;->profileImageChanged:Z

    return v0
.end method

.method public getProfileImageData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->profileImageData:Ljava/lang/String;

    return-object v0
.end method

.method public getRepostCount()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/samsung/milk/milkvideo/models/User;->repostCount:I

    return v0
.end method

.method public getSoftLoginId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->softLoginId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 405
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->uuid:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public inflateCachedUser(Ljava/lang/String;)V
    .locals 9
    .param p1, "cachedString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 115
    if-eqz p1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 116
    const-string v2, "%%%@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "splitString":[Ljava/lang/String;
    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    .line 118
    aget-object v2, v1, v5

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 119
    aget-object v2, v1, v5

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->email:Ljava/lang/String;

    .line 124
    :goto_0
    aget-object v2, v1, v6

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 125
    aget-object v2, v1, v6

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->uuid:Ljava/lang/String;

    .line 130
    :goto_1
    aget-object v2, v1, v7

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 131
    aget-object v2, v1, v7

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->username:Ljava/lang/String;

    .line 136
    :goto_2
    aget-object v2, v1, v8

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 137
    aget-object v2, v1, v8

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->firstName:Ljava/lang/String;

    .line 142
    :goto_3
    const/4 v2, 0x4

    aget-object v2, v1, v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 143
    const/4 v2, 0x4

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->lastName:Ljava/lang/String;

    .line 148
    :goto_4
    const/4 v2, 0x5

    aget-object v2, v1, v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 149
    const/4 v2, 0x5

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    .line 155
    :goto_5
    const/4 v2, 0x6

    aget-object v2, v1, v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/milk/milkvideo/models/User;->brand:Z

    .line 157
    const/4 v2, 0x7

    aget-object v2, v1, v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 158
    const/4 v2, 0x7

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->password:Ljava/lang/String;

    .line 163
    :goto_6
    const/16 v2, 0x8

    aget-object v2, v1, v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 164
    const/16 v2, 0x8

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->softLoginId:Ljava/lang/String;

    .line 169
    :goto_7
    const/16 v2, 0x9

    aget-object v2, v1, v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 170
    const/16 v2, 0x9

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->facebookId:Ljava/lang/String;

    .line 175
    :goto_8
    const/16 v2, 0xa

    aget-object v2, v1, v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    const/16 v2, 0xa

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconSelectableUri:Ljava/lang/String;

    .line 178
    :cond_0
    const/16 v2, 0xb

    aget-object v2, v1, v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    const/16 v2, 0xb

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUserListUri:Ljava/lang/String;

    .line 181
    :cond_1
    const/16 v2, 0xc

    aget-object v2, v1, v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 182
    const/16 v2, 0xc

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/models/User;->iconVideoListUri:Ljava/lang/String;

    .line 184
    :cond_2
    array-length v2, v1

    const/16 v3, 0xf

    if-lt v2, v3, :cond_4

    .line 185
    const/16 v2, 0xd

    aget-object v2, v1, v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 187
    const/16 v2, 0xd

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/milk/milkvideo/models/User;->followerCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_3
    :goto_9
    const/16 v2, 0xe

    aget-object v2, v1, v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 194
    const/16 v2, 0xe

    :try_start_1
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    .end local v1    # "splitString":[Ljava/lang/String;
    :cond_4
    :goto_a
    return-void

    .line 122
    .restart local v1    # "splitString":[Ljava/lang/String;
    :cond_5
    iput-object v4, p0, Lcom/samsung/milk/milkvideo/models/User;->email:Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    :cond_6
    iput-object v4, p0, Lcom/samsung/milk/milkvideo/models/User;->uuid:Ljava/lang/String;

    goto/16 :goto_1

    .line 134
    :cond_7
    iput-object v4, p0, Lcom/samsung/milk/milkvideo/models/User;->username:Ljava/lang/String;

    goto/16 :goto_2

    .line 140
    :cond_8
    iput-object v4, p0, Lcom/samsung/milk/milkvideo/models/User;->firstName:Ljava/lang/String;

    goto/16 :goto_3

    .line 146
    :cond_9
    iput-object v4, p0, Lcom/samsung/milk/milkvideo/models/User;->lastName:Ljava/lang/String;

    goto/16 :goto_4

    .line 152
    :cond_a
    iput-object v4, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    goto/16 :goto_5

    .line 161
    :cond_b
    iput-object v4, p0, Lcom/samsung/milk/milkvideo/models/User;->password:Ljava/lang/String;

    goto/16 :goto_6

    .line 167
    :cond_c
    iput-object v4, p0, Lcom/samsung/milk/milkvideo/models/User;->softLoginId:Ljava/lang/String;

    goto/16 :goto_7

    .line 173
    :cond_d
    iput-object v4, p0, Lcom/samsung/milk/milkvideo/models/User;->facebookId:Ljava/lang/String;

    goto/16 :goto_8

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    iput v5, p0, Lcom/samsung/milk/milkvideo/models/User;->followerCount:I

    goto :goto_9

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 196
    .restart local v0    # "e":Ljava/lang/Exception;
    iput v5, p0, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I

    goto :goto_a
.end method

.method public isBrand()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/User;->brand:Z

    return v0
.end method

.method public isFollowedByMe()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/User;->followedByMe:Z

    return v0
.end method

.method public setBrand(Z)V
    .locals 0
    .param p1, "brand"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/models/User;->brand:Z

    .line 254
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->email:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setFacebookId(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookId"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->facebookId:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->firstName:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setFollowedByMe(Z)V
    .locals 0
    .param p1, "followedByMe"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/models/User;->followedByMe:Z

    .line 342
    return-void
.end method

.method public setFollowerCount(I)V
    .locals 0
    .param p1, "followerCount"    # I

    .prologue
    .line 309
    iput p1, p0, Lcom/samsung/milk/milkvideo/models/User;->followerCount:I

    .line 310
    return-void
.end method

.method public setFollowingCount(I)V
    .locals 0
    .param p1, "followingCount"    # I

    .prologue
    .line 325
    iput p1, p0, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I

    .line 326
    return-void
.end method

.method public setIconUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUri"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setIconUserListUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUserListUri"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUserListUri:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->lastName:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->password:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setProfileBackgroundUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileBackgroundUri"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->profileBackgroundUri:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setProfileImageChanged(Z)V
    .locals 0
    .param p1, "profileImageChanged"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/models/User;->profileImageChanged:Z

    .line 366
    return-void
.end method

.method public setProfileImageData(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileImageData"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->profileImageData:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setRepostCount(I)V
    .locals 0
    .param p1, "repostCount"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/samsung/milk/milkvideo/models/User;->repostCount:I

    .line 334
    return-void
.end method

.method public setSoftLoginId(Ljava/lang/String;)V
    .locals 0
    .param p1, "softLoginId"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->softLoginId:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->username:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/User;->uuid:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 410
    iget-boolean v2, p0, Lcom/samsung/milk/milkvideo/models/User;->brand:Z

    if-eqz v2, :cond_0

    .line 411
    const-string v0, "true"

    .line 416
    .local v0, "brandString":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/User;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/User;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/User;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/User;->firstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/User;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/User;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/User;->softLoginId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/User;->facebookId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/User;->iconSelectableUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUserListUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/models/User;->iconVideoListUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/milk/milkvideo/models/User;->followerCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%%@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "returnable":Ljava/lang/String;
    return-object v1

    .line 414
    .end local v0    # "brandString":Ljava/lang/String;
    .end local v1    # "returnable":Ljava/lang/String;
    :cond_0
    const-string v0, "false"

    .restart local v0    # "brandString":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public updateFollowingCount(Z)V
    .locals 1
    .param p1, "increment"    # Z

    .prologue
    .line 317
    if-eqz p1, :cond_0

    .line 318
    iget v0, p0, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget v0, p0, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconSelectableUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconUserListUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->iconVideoListUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/User;->brand:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->softLoginId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/User;->facebookId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget v0, p0, Lcom/samsung/milk/milkvideo/models/User;->followerCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget v0, p0, Lcom/samsung/milk/milkvideo/models/User;->followingCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Lcom/samsung/milk/milkvideo/models/User;->repostCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/User;->followedByMe:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    return-void

    :cond_0
    move v0, v2

    .line 384
    goto :goto_0

    :cond_1
    move v1, v2

    .line 391
    goto :goto_1
.end method
