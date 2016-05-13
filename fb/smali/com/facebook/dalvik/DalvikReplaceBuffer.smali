.class public Lcom/facebook/dalvik/DalvikReplaceBuffer;
.super Ljava/lang/Object;
.source "wifi_port"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, ""

    sput-object v0, Lcom/facebook/dalvik/DalvikReplaceBuffer;->a:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->NOT_ATTEMPTED:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    sput-object v0, Lcom/facebook/dalvik/DalvikReplaceBuffer;->b:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static a()Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/facebook/dalvik/DalvikReplaceBuffer;->b:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    return-object v0
.end method

.method public static a(Lcom/facebook/dalvik/DalvikLinearAllocType;)Z
    .locals 2

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/facebook/dalvik/DalvikReplaceBuffer;->b(Lcom/facebook/dalvik/DalvikLinearAllocType;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/facebook/dalvik/DalvikReplaceBuffer;->a()Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    move-result-object v0

    sget-object v1, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->FAILURE:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    if-ne v0, v1, :cond_0

    .line 23
    sget-object v0, Lcom/facebook/dalvik/DalvikReplaceBuffer;->a:Ljava/lang/String;

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No failure string is provided when the operation did not fail."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lcom/facebook/dalvik/DalvikLinearAllocType;)V
    .locals 4

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/dalvik/DalvikReplaceBuffer;->b:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    sget-object v1, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->NOT_ATTEMPTED:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    if-eq v0, v1, :cond_0

    .line 61
    const-string v0, "DalvikReplaceBuffer"

    const-string v1, "Multiple attempts to replace the buffer detected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void

    .line 66
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/facebook/dalvik/DalvikLinearAllocType;->bufferSizeBytes:I

    invoke-static {v0}, Lcom/facebook/dalvik/DalvikInternals;->fixLinearAllocBuffer(I)V

    .line 67
    sget-object v0, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->SUCCESS:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    sput-object v0, Lcom/facebook/dalvik/DalvikReplaceBuffer;->b:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    sget-object v1, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->FAILURE:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    sput-object v1, Lcom/facebook/dalvik/DalvikReplaceBuffer;->b:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/dalvik/DalvikReplaceBuffer;->a:Ljava/lang/String;

    .line 71
    const-string v1, "DalvikReplaceBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to replace LinearAlloc buffer (at size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/facebook/dalvik/DalvikLinearAllocType;->bufferSizeBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). Continuing with standard buffer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
