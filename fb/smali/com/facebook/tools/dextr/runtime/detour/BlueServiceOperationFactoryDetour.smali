.class public Lcom/facebook/tools/dextr/runtime/detour/BlueServiceOperationFactoryDetour;
.super Ljava/lang/Object;
.source "stts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/fbservice/ops/DefaultBlueServiceOperationFactory;Ljava/lang/String;Landroid/os/Bundle;I)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;
    .locals 2

    .prologue
    .line 22
    const/16 v0, 0x8

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_FLAG:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p3}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/facebook/fbservice/ops/DefaultBlueServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/fbservice/ops/DefaultBlueServiceOperationFactory;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/common/callercontext/CallerContext;I)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;
    .locals 2

    .prologue
    .line 52
    const/16 v0, 0x8

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_FLAG:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p4}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/fbservice/ops/DefaultBlueServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/common/callercontext/CallerContext;)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/fbservice/ops/DefaultBlueServiceOperationFactory;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/fbservice/ops/ErrorPropagation;I)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;
    .locals 2

    .prologue
    .line 37
    const/16 v0, 0x8

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_FLAG:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p4}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/fbservice/ops/DefaultBlueServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/fbservice/ops/ErrorPropagation;)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/fbservice/ops/DefaultBlueServiceOperationFactory;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/fbservice/ops/ErrorPropagation;Lcom/facebook/common/callercontext/CallerContext;I)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;
    .locals 2

    .prologue
    .line 68
    const/16 v0, 0x8

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_FLAG:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p5}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    .line 73
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/fbservice/ops/DefaultBlueServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/fbservice/ops/ErrorPropagation;Lcom/facebook/common/callercontext/CallerContext;)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;

    move-result-object v0

    return-object v0
.end method
