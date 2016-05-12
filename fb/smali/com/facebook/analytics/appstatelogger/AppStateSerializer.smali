.class Lcom/facebook/analytics/appstatelogger/AppStateSerializer;
.super Ljava/lang/Object;
.source "true"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a(Ljava/io/OutputStream;Lcom/facebook/analytics/appstatelogger/AppState;)V
    .locals 7

    .prologue
    .line 25
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 26
    new-instance v3, Landroid/util/JsonWriter;

    invoke-direct {v3, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 28
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 30
    invoke-virtual {p1}, Lcom/facebook/analytics/appstatelogger/AppState;->b()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "processName"

    invoke-virtual {v3, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 34
    invoke-virtual {p1}, Lcom/facebook/analytics/appstatelogger/AppState;->a()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v4

    .line 35
    const-string v0, "activities"

    invoke-virtual {v3, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 36
    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v5

    .line 37
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_0

    .line 38
    invoke-virtual {v4, v2}, Landroid/support/v4/util/SimpleArrayMap;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-virtual {v4, v2}, Landroid/support/v4/util/SimpleArrayMap;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 41
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 42
    const-string v6, "name"

    invoke-virtual {v3, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 43
    const-string v0, "state"

    invoke-virtual {v3, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/analytics/appstatelogger/ActivityState;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 44
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 37
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 48
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 50
    invoke-virtual {v3}, Landroid/util/JsonWriter;->flush()V

    .line 51
    return-void
.end method
