.class public final Lcom/samsung/android/sdk/look/Slook;
.super Ljava/lang/Object;
.source "Slook.java"

# interfaces
.implements Lcom/samsung/android/sdk/SsdkInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/Slook$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final AIRBUTTON:I = 0x1

.field public static final COCKTAIL_BAR:I = 0x6

.field public static final SMARTCLIP:I = 0x2

.field public static final SPEN_BEZEL_INTERACTION:I = 0x5

.field public static final SPEN_HOVER_ICON:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Slook"

.field private static final VERSION_CODE:I = 0x3

.field private static final VERSION_NAME:Ljava/lang/String; = "1.1.1"

.field public static final WRITINGBUDDY:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method private insertLog(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const/4 v6, -0x1

    .line 211
    .local v6, "version":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.samsung.android.providers.context"

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 213
    .local v5, "pInfo":Landroid/content/pm/PackageInfo;
    iget v6, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    const-string v7, "SM_SDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "versionCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 219
    const-string v7, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {p1, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 220
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7}, Ljava/lang/SecurityException;-><init>()V

    throw v7

    .line 214
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SM_SDK"

    const-string v8, "Could not find ContextProvider"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v3    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v7, "SM_SDK"

    const-string v8, "Add com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_1
    return-void

    .line 227
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "appId":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/Slook;->getVersionCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "feature":Ljava/lang/String;
    const-string v7, "app_id"

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v7, "feature"

    invoke-virtual {v2, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string v7, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v7, "data"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    const-string v7, "com.samsung.android.providers.context"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private isSupportedDevice()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 147
    const/4 v0, 0x1

    .line 148
    .local v0, "firstFeature":I
    const/4 v1, 0x6

    .line 149
    .local v1, "lastFeature":I
    move v2, v0

    .local v2, "type":I
    :goto_0
    if-gt v2, v1, :cond_1

    .line 150
    packed-switch v2, :pswitch_data_0

    .line 149
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :pswitch_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 157
    invoke-static {v2}, Lcom/samsung/android/sdk/look/SlookImpl;->isFeatureEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    :goto_1
    return v3

    .line 163
    :pswitch_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    .line 164
    invoke-static {v2}, Lcom/samsung/android/sdk/look/SlookImpl;->isFeatureEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 173
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x3

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "1.1.1"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v2, "This device is not samsung product."

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/Slook;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    new-instance v1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v2, "This device is not supported."

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 138
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/look/Slook;->insertLog(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isFeatureEnabled(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/look/SlookImpl;->isFeatureEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 199
    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 202
    invoke-static {p1}, Lcom/samsung/android/sdk/look/SlookImpl;->isFeatureEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
