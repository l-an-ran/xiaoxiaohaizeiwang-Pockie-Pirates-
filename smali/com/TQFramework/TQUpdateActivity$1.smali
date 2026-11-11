.class Lcom/TQFramework/TQUpdateActivity$1;
.super Landroid/os/Handler;
.source "TQUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/TQUpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/TQUpdateActivity;


# direct methods
.method constructor <init>(Lcom/TQFramework/TQUpdateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    .line 492
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/TQFramework/TQUpdateActivity$1;)Lcom/TQFramework/TQUpdateActivity;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 496
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 498
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 500
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$0(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$1(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$2(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$3(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$4(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 508
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/TQFramework/TQUpdateActivity;->UpdateVersion(I)V

    .line 647
    :cond_2
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 648
    return-void

    .line 510
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/TQFramework/TQUpdateActivity;->bForeceUpdate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$4(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/TQFramework/TQUpdateActivity;->access$5(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$4(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$2(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$1(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$6(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/Button;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$7(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/Button;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 526
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->ReturnMainView()V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->finish()V

    goto/16 :goto_0

    .line 530
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$1(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/TQFramework/TQUpdateActivity;->access$8(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$3(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 535
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$1(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/TQFramework/TQUpdateActivity;->access$9(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$3(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 540
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$1(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/TQFramework/TQUpdateActivity;->access$10(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$3(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 545
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sget v19, Lcom/TQFramework/TQUpdateActivity;->MSG_INITUNPRESS:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$1(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/TQFramework/TQUpdateActivity;->access$11(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$3(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 550
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sget v19, Lcom/TQFramework/TQUpdateActivity;->MSG_INIRES:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/TQFramework/TQUpdateActivity;->access$12(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/TQFramework/TQUpdateActivity;->access$12(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "splites.xml"

    invoke-virtual/range {v18 .. v21}, Lcom/TQFramework/TQUpdateActivity;->ReadSplitFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 555
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sget v19, Lcom/TQFramework/TQUpdateActivity;->MSG_INIRESTIPS:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$1(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    const-string v19, "\u521d\u59cb\u5316\u8d44\u6e90\u3002\u3002\u3002\u8bf7\u8010\u5fc3\u7b49\u5f85\u3002\u3002\u3002"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 560
    .local v9, "msg1":Landroid/os/Message;
    sget v18, Lcom/TQFramework/TQUpdateActivity;->MSG_INIRES:I

    move/from16 v0, v18

    iput v0, v9, Landroid/os/Message;->what:I

    .line 561
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 564
    .end local v9    # "msg1":Landroid/os/Message;
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 566
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 567
    .local v4, "dialog":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$14(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 568
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$15(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 586
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$19(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v18

    .line 587
    new-instance v19, Lcom/TQFramework/TQUpdateActivity$1$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/TQFramework/TQUpdateActivity$1$1;-><init>(Lcom/TQFramework/TQUpdateActivity$1;)V

    .line 586
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 571
    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$16(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 574
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$17(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 577
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 579
    const-string v18, "APKFileError"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 583
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$18(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 596
    .end local v4    # "dialog":Landroid/app/AlertDialog$Builder;
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 598
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v7, v0

    .line 599
    .local v7, "farg1":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v7

    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v10, v0

    .line 600
    .local v10, "nPer":I
    const-string v18, "%s(%d%%)"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/TQFramework/TQUpdateActivity;->access$20(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 601
    .local v14, "strInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$2(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$3(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$3(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$21(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ImageView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$21(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 607
    .local v12, "para":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$21(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 608
    .local v6, "dra":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 609
    .local v5, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 610
    iget v15, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 611
    .local v15, "width":I
    iget v8, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 612
    .local v8, "height":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 613
    .local v13, "per":F
    int-to-float v0, v8

    move/from16 v18, v0

    mul-float v18, v18, v13

    const/high16 v19, 0x40400000    # 3.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v17, v8, v18

    .line 614
    .local v17, "y":I
    int-to-float v0, v15

    move/from16 v18, v0

    mul-float v18, v18, v13

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3ffbb645a1cac083L    # 1.732

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    .line 615
    .local v16, "x":I
    new-instance v11, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    sub-int v20, v16, v20

    const-wide v21, 0x3ffccccccccccccdL    # 1.8

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerY()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    sub-int v21, v17, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 617
    .local v11, "new_params":Landroid/widget/AbsoluteLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->access$21(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/ImageView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 632
    .end local v5    # "dm":Landroid/util/DisplayMetrics;
    .end local v6    # "dra":Landroid/graphics/drawable/Drawable;
    .end local v7    # "farg1":F
    .end local v8    # "height":I
    .end local v10    # "nPer":I
    .end local v11    # "new_params":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v12    # "para":Landroid/view/ViewGroup$LayoutParams;
    .end local v13    # "per":F
    .end local v14    # "strInfo":Ljava/lang/String;
    .end local v15    # "width":I
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 634
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->InstallApk()V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->finish()V

    .line 638
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 643
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/TQFramework/TQUpdateActivity$1;->this$0:Lcom/TQFramework/TQUpdateActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/TQFramework/TQUpdateActivity;->ReturnMainView()V

    goto/16 :goto_0
.end method
