.class public Lcom/samsung/milk/milkvideo/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final API_KEY:Ljava/lang/String; = "foo1"

.field public static final APPLICATION_NAME:Ljava/lang/String; = "Milk Video"

.field public static final CATEGORY_USER_POSTS:Ljava/lang/String; = "UserPosts"

.field public static final CATEGORY_USER_REPOSTS:Ljava/lang/String; = "UserReposts"

.field public static final CATEGORY_USER_STARRED:Ljava/lang/String; = "UserStarred"

.field public static volatile CLICK_START:J = 0x0L

.field private static final DEFAULT_GCM_SENDER_ID:Ljava/lang/String; = "1001734280862"

.field public static final FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final GOOGLE:Ljava/lang/String; = "google"

.field public static ORIENTATION_LOCKED:I = 0x0

.field public static final PREFS_KEY_AUTOPLAY:Ljava/lang/String; = "autoplay_enabled"

.field public static final PREFS_KEY_BANDWIDTH:Ljava/lang/String; = "bandwidth"

.field public static final PREFS_KEY_CURRENT_NOTIFICATION_ID:Ljava/lang/String; = "current_notif_id"

.field public static final PREFS_KEY_LOGIN_SERVICE:Ljava/lang/String; = "login_service"

.field public static final PREFS_KEY_NOTIFICATIONS:Ljava/lang/String; = "notifications_enabled"

.field public static final PREFS_KEY_NUX_COMPLETED:Ljava/lang/String; = "is_nux_shown"

.field public static final PREFS_KEY_SESSION_TOKEN:Ljava/lang/String; = "session_token"

.field public static final PREFS_KEY_USER:Ljava/lang/String; = "user"

.field public static final PREFS_NAME:Ljava/lang/String; = "nachos_prefs"

.field public static final SAMSUNG:Ljava/lang/String; = "samsung"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/milk/milkvideo/utils/Constants;->CLICK_START:J

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/samsung/milk/milkvideo/utils/Constants;->ORIENTATION_LOCKED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGCMSenderID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    const-string v0, "com.samsung.milk.milkvideo.gcmSenderId"

    const-string v1, "1001734280862"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
