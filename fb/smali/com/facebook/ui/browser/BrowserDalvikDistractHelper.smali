.class public Lcom/facebook/ui/browser/BrowserDalvikDistractHelper;
.super Ljava/lang/Object;
.source "onResume() - finishing the activity."


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ui/browser/BrowserDalvikDistractHelper;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 17
    sget-boolean v0, Lcom/facebook/ui/browser/BrowserDalvikDistractHelper;->a:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    sput-boolean v2, Lcom/facebook/ui/browser/BrowserDalvikDistractHelper;->a:Z

    .line 25
    :try_start_0
    const-string v0, "android.webkit.JniUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 27
    const-string v2, "canSatisfyMemoryAllocation"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 28
    const-class v2, Lcom/facebook/ui/browser/BrowserDalvikDistractHelper;

    const-string v3, "alwaysCanSatisfyMemoryAllocation"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/facebook/dalvikdistract/DalvikDistract;

    invoke-direct {v2}, Lcom/facebook/dalvikdistract/DalvikDistract;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/facebook/dalvikdistract/DalvikDistract;->hook(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/dalvikdistract/DalvikDistract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/dalvikdistract/DalvikDistract;->commit()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/dalvikdistract/DalvikDistract$IncompatibleSignatureError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 36
    :catch_1
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 38
    :catch_2
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
