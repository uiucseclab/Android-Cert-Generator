.class public final Lcom/facebook/loom/core/LoomConstants;
.super Ljava/lang/Object;
.source "returning shared id %s"


# static fields
.field public static final a:Lcom/facebook/prefs/shared/PrefKey;

.field public static final b:Lcom/facebook/prefs/shared/PrefKey;

.field private static final c:Lcom/facebook/prefs/shared/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/prefs/shared/SharedPrefKeys;->c:Lcom/facebook/prefs/shared/PrefKey;

    const-string v1, "loom/"

    invoke-virtual {v0, v1}, Lcom/facebook/common/typedkey/TypedKey;->a(Ljava/lang/String;)Lcom/facebook/common/typedkey/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/prefs/shared/PrefKey;

    .line 43
    sput-object v0, Lcom/facebook/loom/core/LoomConstants;->c:Lcom/facebook/prefs/shared/PrefKey;

    const-string v1, "manual_tracing"

    invoke-virtual {v0, v1}, Lcom/facebook/common/typedkey/TypedKey;->a(Ljava/lang/String;)Lcom/facebook/common/typedkey/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/prefs/shared/PrefKey;

    sput-object v0, Lcom/facebook/loom/core/LoomConstants;->a:Lcom/facebook/prefs/shared/PrefKey;

    .line 44
    sget-object v0, Lcom/facebook/loom/core/LoomConstants;->c:Lcom/facebook/prefs/shared/PrefKey;

    const-string v1, "manual_filter_enabled"

    invoke-virtual {v0, v1}, Lcom/facebook/common/typedkey/TypedKey;->a(Ljava/lang/String;)Lcom/facebook/common/typedkey/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/prefs/shared/PrefKey;

    sput-object v0, Lcom/facebook/loom/core/LoomConstants;->b:Lcom/facebook/prefs/shared/PrefKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
