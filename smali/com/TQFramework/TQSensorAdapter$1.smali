.class Lcom/TQFramework/TQSensorAdapter$1;
.super Ljava/lang/Object;
.source "TQSensorAdapter.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/TQSensorAdapter;->Start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/TQSensorAdapter;


# direct methods
.method constructor <init>(Lcom/TQFramework/TQSensorAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/TQSensorAdapter$1;->this$0:Lcom/TQFramework/TQSensorAdapter;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "s"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 38
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/TQFramework/TQSensorAdapter$1;->this$0:Lcom/TQFramework/TQSensorAdapter;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/TQFramework/TQSensorAdapter;->access$0(Lcom/TQFramework/TQSensorAdapter;F)V

    .line 32
    iget-object v0, p0, Lcom/TQFramework/TQSensorAdapter$1;->this$0:Lcom/TQFramework/TQSensorAdapter;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/TQFramework/TQSensorAdapter;->access$1(Lcom/TQFramework/TQSensorAdapter;F)V

    .line 33
    iget-object v0, p0, Lcom/TQFramework/TQSensorAdapter$1;->this$0:Lcom/TQFramework/TQSensorAdapter;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/TQFramework/TQSensorAdapter;->access$2(Lcom/TQFramework/TQSensorAdapter;F)V

    .line 34
    iget-object v0, p0, Lcom/TQFramework/TQSensorAdapter$1;->this$0:Lcom/TQFramework/TQSensorAdapter;

    invoke-static {v0}, Lcom/TQFramework/TQSensorAdapter;->access$3(Lcom/TQFramework/TQSensorAdapter;)F

    move-result v0

    iget-object v1, p0, Lcom/TQFramework/TQSensorAdapter$1;->this$0:Lcom/TQFramework/TQSensorAdapter;

    invoke-static {v1}, Lcom/TQFramework/TQSensorAdapter;->access$4(Lcom/TQFramework/TQSensorAdapter;)F

    move-result v1

    iget-object v2, p0, Lcom/TQFramework/TQSensorAdapter$1;->this$0:Lcom/TQFramework/TQSensorAdapter;

    invoke-static {v2}, Lcom/TQFramework/TQSensorAdapter;->access$5(Lcom/TQFramework/TQSensorAdapter;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/TQFramework/TQSensorAdapter;->SensorEvent(FFF)I

    .line 35
    return-void
.end method
