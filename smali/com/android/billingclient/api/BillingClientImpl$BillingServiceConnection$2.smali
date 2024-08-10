.class Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    .prologue
    .line 1534
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1534
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1538
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-static {v8}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$1300(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1539
    :try_start_0
    iget-object v9, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-static {v9}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$1500(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1540
    monitor-exit v8

    .line 1602
    :goto_0
    return-object v11

    .line 1542
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    const/4 v5, 0x3

    .line 1545
    .local v5, "setupResponse":I
    :try_start_1
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v8, v8, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$200(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1547
    .local v4, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1548
    .local v3, "highestLevelSupportedForSubs":I
    const/16 v0, 0xa

    .line 1549
    .local v0, "apiVersion":I
    :goto_1
    if-lt v0, v10, :cond_1

    .line 1551
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v8, v8, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1552
    invoke-static {v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$300(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v8

    const-string/jumbo v9, "subs"

    invoke-interface {v8, v0, v4, v9}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1553
    if-nez v5, :cond_5

    .line 1554
    move v3, v0

    .line 1558
    :cond_1
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v9, v8, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v8, 0x5

    if-lt v3, v8, :cond_6

    move v8, v6

    :goto_2
    invoke-static {v9, v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$1602(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 1559
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v9, v8, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    if-lt v3, v10, :cond_7

    move v8, v6

    :goto_3
    invoke-static {v9, v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$1702(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 1560
    if-ge v3, v10, :cond_2

    .line 1561
    const-string v8, "BillingClient"

    const-string v9, "In-app billing API does not support subscription on this device."

    invoke-static {v8, v9}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    :cond_2
    const/4 v2, 0x0

    .line 1567
    .local v2, "highestLevelSupportedForInApp":I
    const/16 v0, 0xa

    .line 1568
    :goto_4
    if-lt v0, v10, :cond_3

    .line 1570
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v8, v8, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1571
    invoke-static {v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$300(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v8

    const-string v9, "inapp"

    invoke-interface {v8, v0, v4, v9}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1572
    if-nez v5, :cond_8

    .line 1573
    move v2, v0

    .line 1577
    :cond_3
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v9, v8, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/16 v8, 0xa

    if-lt v2, v8, :cond_9

    move v8, v6

    :goto_5
    invoke-static {v9, v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$1802(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 1578
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v9, v8, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/16 v8, 0x9

    if-lt v2, v8, :cond_a

    move v8, v6

    :goto_6
    invoke-static {v9, v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$1902(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 1579
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v9, v8, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/16 v8, 0x8

    if-lt v2, v8, :cond_b

    move v8, v6

    :goto_7
    invoke-static {v9, v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$2002(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 1580
    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v8, v8, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v9, 0x6

    if-lt v2, v9, :cond_c

    :goto_8
    invoke-static {v8, v6}, Lcom/android/billingclient/api/BillingClientImpl;->access$2102(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 1581
    if-ge v2, v10, :cond_4

    .line 1582
    const-string v6, "BillingClient"

    const-string v8, "In-app billing API version 3 is not supported on this device."

    invoke-static {v6, v8}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    :cond_4
    if-nez v5, :cond_d

    .line 1586
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v6, v6, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v8, 0x2

    invoke-static {v6, v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$1202(Lcom/android/billingclient/api/BillingClientImpl;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1597
    .end local v0    # "apiVersion":I
    .end local v2    # "highestLevelSupportedForInApp":I
    .end local v3    # "highestLevelSupportedForSubs":I
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_9
    if-nez v5, :cond_e

    .line 1598
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    sget-object v7, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v6, v7}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$2200(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;Lcom/android/billingclient/api/BillingResult;)V

    goto/16 :goto_0

    .line 1542
    .end local v5    # "setupResponse":I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1550
    .restart local v0    # "apiVersion":I
    .restart local v3    # "highestLevelSupportedForSubs":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "setupResponse":I
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    :cond_6
    move v8, v7

    .line 1558
    goto :goto_2

    :cond_7
    move v8, v7

    .line 1559
    goto :goto_3

    .line 1569
    .restart local v2    # "highestLevelSupportedForInApp":I
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_9
    move v8, v7

    .line 1577
    goto :goto_5

    :cond_a
    move v8, v7

    .line 1578
    goto :goto_6

    :cond_b
    move v8, v7

    .line 1579
    goto :goto_7

    :cond_c
    move v6, v7

    .line 1580
    goto :goto_8

    .line 1588
    :cond_d
    :try_start_3
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v6, v6, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$1202(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 1589
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v6, v6, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$302(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    .line 1591
    .end local v0    # "apiVersion":I
    .end local v2    # "highestLevelSupportedForInApp":I
    .end local v3    # "highestLevelSupportedForSubs":I
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1592
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "BillingClient"

    const-string v8, "Exception while checking if billing is supported; try to reconnect"

    invoke-static {v6, v8}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v6, v6, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v6, v7}, Lcom/android/billingclient/api/BillingClientImpl;->access$1202(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 1595
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v6, v6, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v6, v11}, Lcom/android/billingclient/api/BillingClientImpl;->access$302(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    goto :goto_9

    .line 1600
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_e
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    sget-object v7, Lcom/android/billingclient/api/BillingResults;->API_VERSION_NOT_V3:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v6, v7}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$2200(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;Lcom/android/billingclient/api/BillingResult;)V

    goto/16 :goto_0
.end method
