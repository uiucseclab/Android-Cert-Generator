.class public Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;
.super Ljava/lang/Object;
.source "suppressing close error"


# static fields
.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent$1;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent$1;-><init>()V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a:Landroid/content/Context;

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Ljava/util/List;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)I
    .locals 10
    .param p3    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/os/Bundle;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->d(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 130
    const/4 v0, 0x0

    .line 131
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v8, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a:Landroid/content/Context;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 142
    add-int/lit8 v0, v8, 0x1

    :goto_1
    move v8, v0

    .line 144
    goto :goto_0

    .line 145
    :cond_0
    return v8

    :cond_1
    move v0, v8

    goto :goto_1
.end method

.method public final a(Landroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object v0

    .line 180
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->d(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 183
    :try_start_0
    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    const-string v3, "SignatureAuthSecureIntent"

    const-string v4, "Failed to startService %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v1, v4, v5}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 64
    const-string v0, "auth_bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    const-string v0, "SignatureAuthSecureIntent"

    const-string v2, "Invalid auth bundle"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 70
    :cond_0
    const-string v2, "auth_pending_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 71
    if-nez v0, :cond_1

    .line 72
    const-string v0, "SignatureAuthSecureIntent"

    const-string v2, "Invalid auth intent"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 73
    goto :goto_0

    .line 77
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 78
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, p2}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    :goto_0
    return v0

    .line 165
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->d(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 168
    goto :goto_0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    const-string v3, "SignatureAuthSecureIntent"

    const-string v4, "Failed to sendBroadcast %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {v3, v2, v4, v1}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/rti/common/util/PackageInfoUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->d(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/facebook/rti/common/util/PackageInfoUtil;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 110
    :goto_0
    return-object v0

    .line 98
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 99
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 105
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 106
    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 110
    goto :goto_0
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->d(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 153
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public final d(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 215
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v2, "auth_pending_intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 217
    const-string v0, "auth_bundle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 218
    return-object p1
.end method
