.class Lcom/facebook/browser/lite/widget/BrowserLiteLeadGenContinuedFlowView$1;
.super Ljava/lang/Object;
.source "processName"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/widget/BrowserLiteLeadGenContinuedFlowView;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/widget/BrowserLiteLeadGenContinuedFlowView;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/browser/lite/widget/BrowserLiteLeadGenContinuedFlowView$1;->a:Lcom/facebook/browser/lite/widget/BrowserLiteLeadGenContinuedFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x45d40282

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 35
    iget-object v1, p0, Lcom/facebook/browser/lite/widget/BrowserLiteLeadGenContinuedFlowView$1;->a:Lcom/facebook/browser/lite/widget/BrowserLiteLeadGenContinuedFlowView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/facebook/browser/lite/widget/BrowserLiteLeadGenContinuedFlowView;->setVisibility(I)V

    .line 36
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x69917b34

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method
