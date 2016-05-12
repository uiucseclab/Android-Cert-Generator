.class public Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;
.super Ljava/lang/Object;
.source "seq_num"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Landroid/content/SharedPreferences;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->d:I

    .line 44
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->e:Landroid/content/SharedPreferences;

    .line 45
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->f:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries$1;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries$1;-><init>(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->c:Ljava/util/TreeSet;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a:Ljava/util/List;

    .line 54
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 115
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 116
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 117
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 118
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 120
    :cond_0
    const-string v0, "address_entries"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 3
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 129
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/TreeSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->c:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->e:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->e:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->e:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 62
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v1, "address_entries"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 65
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 66
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->a(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p0, v2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    :try_start_2
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->b:Ljava/lang/String;

    const-string v2, "Cannot create JSONObject from rawJson"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->c:Ljava/util/TreeSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0, p2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Z
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->d:I

    if-lt v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    .locals 3

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->a()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 89
    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 4

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->d()V

    .line 103
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->e:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :try_start_2
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->b:Ljava/lang/String;

    const-string v2, "Failed to save addressEntries"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
