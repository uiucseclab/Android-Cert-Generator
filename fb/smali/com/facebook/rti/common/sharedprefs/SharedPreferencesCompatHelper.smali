.class public abstract Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;
.super Ljava/lang/Object;
.source "sw"


# static fields
.field public static final a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 25
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$HoneycombSharedPreferencesHelper;

    invoke-direct {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$HoneycombSharedPreferencesHelper;-><init>()V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$PreHoneycombSharedPreferencesHelper;

    invoke-direct {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$PreHoneycombSharedPreferencesHelper;-><init>()V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 36
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;
.end method
