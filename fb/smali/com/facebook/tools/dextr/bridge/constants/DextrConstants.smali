.class public Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;
.super Ljava/lang/Object;
.source "snapshot_service_gap"


# static fields
.field public static final a:Lcom/facebook/prefs/shared/PrefKey;

.field public static final b:Lcom/facebook/prefs/shared/PrefKey;

.field public static c:Ljava/lang/String;

.field private static final d:Lcom/facebook/prefs/shared/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    sget-object v0, Lcom/facebook/prefs/shared/SharedPrefKeys;->c:Lcom/facebook/prefs/shared/PrefKey;

    const-string v1, "dextr/"

    invoke-virtual {v0, v1}, Lcom/facebook/common/typedkey/TypedKey;->a(Ljava/lang/String;)Lcom/facebook/common/typedkey/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/prefs/shared/PrefKey;

    .line 10
    sput-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->d:Lcom/facebook/prefs/shared/PrefKey;

    const-string v1, "remaining_bytes"

    invoke-virtual {v0, v1}, Lcom/facebook/common/typedkey/TypedKey;->a(Ljava/lang/String;)Lcom/facebook/common/typedkey/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/prefs/shared/PrefKey;

    sput-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->a:Lcom/facebook/prefs/shared/PrefKey;

    .line 11
    sget-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->d:Lcom/facebook/prefs/shared/PrefKey;

    const-string v1, "last_remaining_bytes_update_time"

    invoke-virtual {v0, v1}, Lcom/facebook/common/typedkey/TypedKey;->a(Ljava/lang/String;)Lcom/facebook/common/typedkey/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/prefs/shared/PrefKey;

    sput-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->b:Lcom/facebook/prefs/shared/PrefKey;

    .line 25
    const-string v0, "64b99ce7-37dc-4548-8f29-42b09e87e750"

    sput-object v0, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
