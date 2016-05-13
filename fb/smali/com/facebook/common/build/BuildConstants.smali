.class public Lcom/facebook/common/build/BuildConstants;
.super Ljava/lang/Object;
.source "zerorating_enabled"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static final e:Z

.field private static final f:Z

.field private static final g:Z

.field private static final h:Z

.field public static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x0

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->e:Z

    .line 19
    const/16 v0, 0x0

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->f:Z

    .line 20
    const/16 v0, 0x0

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->g:Z

    .line 21
    const/16 v0, 0x0

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->h:Z

    .line 22
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->e:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->i:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->k:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->a:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->l:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->j:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->m:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->k:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->n:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->l:Ljava/lang/String;

    .line 72
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "com.facebook.workchat"

    :goto_0
    sput-object v0, Lcom/facebook/common/build/BuildConstants;->b:Ljava/lang/String;

    .line 76
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "com.facebook.workdev"

    :goto_1
    sput-object v0, Lcom/facebook/common/build/BuildConstants;->c:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->o:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->d:Ljava/lang/String;

    return-void

    .line 72
    :cond_0
    const-string v0, "com.facebook.orca"

    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "com.facebook.work"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public static final b()Z
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x1

    return v0
.end method

.method public static final c()Z
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x0

    return v0
.end method

.method public static final d()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->h:Z

    return v0
.end method

.method public static final e()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->e:Z

    return v0
.end method

.method public static final g()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->f:Z

    return v0
.end method

.method public static final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->c:Ljava/lang/String;

    .line 168
    :goto_0
    return-object v0

    .line 165
    :cond_0
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "com.facebook.wakizashi"

    goto :goto_0

    .line 168
    :cond_1
    const-string v0, "com.facebook.katana"

    goto :goto_0
.end method

.method public static final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "wakizashi"

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "katana"

    goto :goto_0
.end method

.method public static final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://m.facebook.com/mobile_builds"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://market.android.com/details?id=com.facebook.katana"

    goto :goto_0
.end method
