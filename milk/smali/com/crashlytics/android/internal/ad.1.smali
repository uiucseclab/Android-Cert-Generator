.class final enum Lcom/crashlytics/android/internal/ad;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/crashlytics/android/internal/ad;",
        ">;"
    }
.end annotation


# static fields
.field private static enum a:Lcom/crashlytics/android/internal/ad;

.field private static enum b:Lcom/crashlytics/android/internal/ad;

.field private static enum c:Lcom/crashlytics/android/internal/ad;

.field private static enum d:Lcom/crashlytics/android/internal/ad;

.field private static enum e:Lcom/crashlytics/android/internal/ad;

.field private static enum f:Lcom/crashlytics/android/internal/ad;

.field private static enum g:Lcom/crashlytics/android/internal/ad;

.field private static enum h:Lcom/crashlytics/android/internal/ad;

.field private static enum i:Lcom/crashlytics/android/internal/ad;

.field private static enum j:Lcom/crashlytics/android/internal/ad;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/crashlytics/android/internal/ad;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic l:[Lcom/crashlytics/android/internal/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 148
    new-instance v0, Lcom/crashlytics/android/internal/ad;

    const-string v1, "X86_32"

    invoke-direct {v0, v1, v4}, Lcom/crashlytics/android/internal/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ad;->a:Lcom/crashlytics/android/internal/ad;

    .line 149
    new-instance v0, Lcom/crashlytics/android/internal/ad;

    const-string v1, "X86_64"

    invoke-direct {v0, v1, v5}, Lcom/crashlytics/android/internal/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ad;->b:Lcom/crashlytics/android/internal/ad;

    .line 150
    new-instance v0, Lcom/crashlytics/android/internal/ad;

    const-string v1, "ARM_UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/crashlytics/android/internal/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ad;->c:Lcom/crashlytics/android/internal/ad;

    .line 151
    new-instance v0, Lcom/crashlytics/android/internal/ad;

    const-string v1, "PPC"

    invoke-direct {v0, v1, v7}, Lcom/crashlytics/android/internal/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ad;->d:Lcom/crashlytics/android/internal/ad;

    .line 152
    new-instance v0, Lcom/crashlytics/android/internal/ad;

    const-string v1, "PPC64"

    invoke-direct {v0, v1, v3}, Lcom/crashlytics/android/internal/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ad;->e:Lcom/crashlytics/android/internal/ad;

    .line 153
    new-instance v0, Lcom/crashlytics/android/internal/ad;

    const-string v1, "ARMV6"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ad;->f:Lcom/crashlytics/android/internal/ad;

    .line 154
    new-instance v0, Lcom/crashlytics/android/internal/ad;

    const-string v1, "ARMV7"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ad;->g:Lcom/crashlytics/android/internal/ad;

    .line 155
    new-instance v0, Lcom/crashlytics/android/internal/ad;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ad;->h:Lcom/crashlytics/android/internal/ad;

    .line 156
    new-instance v0, Lcom/crashlytics/android/internal/ad;

    const-string v1, "ARMV7S"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ad;->i:Lcom/crashlytics/android/internal/ad;

    .line 157
    new-instance v0, Lcom/crashlytics/android/internal/ad;

    const-string v1, "ARM64"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ad;->j:Lcom/crashlytics/android/internal/ad;

    .line 147
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/crashlytics/android/internal/ad;

    sget-object v1, Lcom/crashlytics/android/internal/ad;->a:Lcom/crashlytics/android/internal/ad;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crashlytics/android/internal/ad;->b:Lcom/crashlytics/android/internal/ad;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crashlytics/android/internal/ad;->c:Lcom/crashlytics/android/internal/ad;

    aput-object v1, v0, v6

    sget-object v1, Lcom/crashlytics/android/internal/ad;->d:Lcom/crashlytics/android/internal/ad;

    aput-object v1, v0, v7

    sget-object v1, Lcom/crashlytics/android/internal/ad;->e:Lcom/crashlytics/android/internal/ad;

    aput-object v1, v0, v3

    const/4 v1, 0x5

    sget-object v2, Lcom/crashlytics/android/internal/ad;->f:Lcom/crashlytics/android/internal/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/crashlytics/android/internal/ad;->g:Lcom/crashlytics/android/internal/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/crashlytics/android/internal/ad;->h:Lcom/crashlytics/android/internal/ad;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/crashlytics/android/internal/ad;->i:Lcom/crashlytics/android/internal/ad;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/crashlytics/android/internal/ad;->j:Lcom/crashlytics/android/internal/ad;

    aput-object v2, v0, v1

    sput-object v0, Lcom/crashlytics/android/internal/ad;->l:[Lcom/crashlytics/android/internal/ad;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 161
    sput-object v0, Lcom/crashlytics/android/internal/ad;->k:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    sget-object v2, Lcom/crashlytics/android/internal/ad;->g:Lcom/crashlytics/android/internal/ad;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/crashlytics/android/internal/ad;->k:Ljava/util/Map;

    const-string v1, "armeabi"

    sget-object v2, Lcom/crashlytics/android/internal/ad;->f:Lcom/crashlytics/android/internal/ad;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/crashlytics/android/internal/ad;->k:Ljava/util/Map;

    const-string v1, "x86"

    sget-object v2, Lcom/crashlytics/android/internal/ad;->a:Lcom/crashlytics/android/internal/ad;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a()Lcom/crashlytics/android/internal/ad;
    .locals 3

    .prologue
    .line 171
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/crashlytics/android/internal/ad;->h:Lcom/crashlytics/android/internal/ad;

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 179
    sget-object v1, Lcom/crashlytics/android/internal/ad;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/ad;

    .line 180
    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/crashlytics/android/internal/ad;->h:Lcom/crashlytics/android/internal/ad;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/internal/ad;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    const-class v0, Lcom/crashlytics/android/internal/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/ad;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/internal/ad;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/crashlytics/android/internal/ad;->l:[Lcom/crashlytics/android/internal/ad;

    invoke-virtual {v0}, [Lcom/crashlytics/android/internal/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/internal/ad;

    return-object v0
.end method
