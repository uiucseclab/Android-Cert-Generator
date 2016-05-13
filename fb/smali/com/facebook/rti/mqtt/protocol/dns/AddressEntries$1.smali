.class Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries$1;
.super Ljava/lang/Object;
.source "seq_num"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries$1;->a:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 47
    check-cast p1, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    check-cast p2, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 50
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
