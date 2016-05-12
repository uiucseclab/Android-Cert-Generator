.class Lcom/samsung/milk/milkvideo/NachosApplication$CrashlyticsTree;
.super Ltimber/log/Timber$HollowTree;
.source "NachosApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/NachosApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashlyticsTree"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/NachosApplication;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/NachosApplication;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/NachosApplication$CrashlyticsTree;->this$0:Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-direct {p0}, Ltimber/log/Timber$HollowTree;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/NachosApplication;Lcom/samsung/milk/milkvideo/NachosApplication$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/NachosApplication;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/NachosApplication$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/NachosApplication$CrashlyticsTree;-><init>(Lcom/samsung/milk/milkvideo/NachosApplication;)V

    return-void
.end method


# virtual methods
.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$CrashlyticsTree;->this$0:Lcom/samsung/milk/milkvideo/NachosApplication;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/NachosApplication;->crashlyticsTracker:Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;

    const/4 v1, 0x6

    const-string v2, "volt"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;->logExceptionAndMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication$CrashlyticsTree;->this$0:Lcom/samsung/milk/milkvideo/NachosApplication;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/NachosApplication;->crashlyticsTracker:Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;

    const/4 v1, 0x6

    const-string v2, "volt"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;->logExceptionAndMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    return-void
.end method
