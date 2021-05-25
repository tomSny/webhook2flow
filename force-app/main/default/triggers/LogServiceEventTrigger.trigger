/**
 * @description       : 
 * @author            : Tom Snyder <tom@3ddd.com>
 * @group             : 
 * @last modified on  : 2021-05-25
 * @last modified by  : Tom Snyder <tom@3ddd.com>
 * Modifications Log 
 * Ver   Date         Author                      Modification
 * 1.0   2021-04-28   Tom Snyder <tom@3ddd.com>   Initial Version
**/
//Unit Test in AccountLogHandler_UT
trigger LogServiceEventTrigger on LogServiceEvent__e (after insert) {

    if ( trigger.isAfter && trigger.isInsert) {
        LogService.LogServiceTriggerEventAfterInsert(trigger.new);
    }
}